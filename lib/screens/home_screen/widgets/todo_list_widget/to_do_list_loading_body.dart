import 'package:flutter/material.dart';
import 'package:life_sync/common_widgets/widgets.dart';
import 'package:life_sync/screens/home_screen/widgets/widgets.dart';
import 'package:life_sync/utils/utils.dart';

_log(dynamic message) =>
    Logger.projectLog(message, name: 'todo_list_loading_body');

class TodoListLoadingWidgetBody extends StatelessWidget {
  const TodoListLoadingWidgetBody({super.key});

  @override
  Widget build(BuildContext context) {
    return const ToDoWidgetFrame(
      child: Center(
        child: SizedBox(
          height: 65,
          width: 65,
          child: RepaintBoundary(
            child: Loader(size: 25),
          ),
        ),
      ),
    );
  }
}
