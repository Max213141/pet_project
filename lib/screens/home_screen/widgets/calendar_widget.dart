import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:life_sync/blocs/blocs.dart';
import 'package:life_sync/common_widgets/widgets.dart';
import 'package:life_sync/entities/entities.dart';
import 'package:life_sync/entities/hive_entities/hive_entities.dart';
import 'package:life_sync/screens/home_screen/widgets/widgets.dart';

class CalendarWidget extends StatefulWidget {
  const CalendarWidget({super.key});

  @override
  State<CalendarWidget> createState() => _CalendarWidgetState();
}

class _CalendarWidgetState extends State<CalendarWidget> {
  late String uid;

  @override
  void initState() {
    UserData? userData = HiveStore().getUserData();
    uid = userData?.uid ?? 'pEo04Rq6And1QOhyTaUOjkMczyy1';
    WidgetsBinding.instance.addPostFrameCallback(
      (_) => BlocProvider.of<MoodBloc>(context).add(
        LoadUserMoodData(userUID: uid),
      ),
    );

    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    Widget body = const SizedBox.shrink();
    return BlocConsumer<MoodBloc, MoodState>(
      listener: (context, state) {
        state.whenOrNull();
      },
      builder: (context, state) {
        state.when(
          initial: () => body = const CalendarLoadingWidget(),
          loading: () => body = const CalendarLoadingWidget(),
          moodLoaded: (moodEntries) => {
            // _log('mood entries from state - $moodEntries'),
            body = CalendarBodyWidget(),
          },
          moodLoadingError: (errorText) => body = Center(
            child: ErrorDialogWidget(
              message: errorText,
            ),
          ),
        );
        return body;
      },
    );
  }
}
