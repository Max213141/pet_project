import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:pet_project/bloc/theme_bloc.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  bool themeState = false;
  @override
  Widget build(BuildContext context) {
    bool val = true;
    return Scaffold(
      appBar: AppBar(
        title: const Text('Switch theme'),
        actions: [
          Switch(
            value: themeState,
            onChanged: (value) {
              setState(() {
                themeState = value;
              });
              BlocProvider.of<ThemeBloc>(context).add(ChangeTheme());
            },
          )
        ],
      ),
      body: Center(
        child: ElevatedButton(
          onPressed: () => context.go('/details'),
          child: const Text('Go to the Details screen'),
        ),
      ),
    );
  }
}


// import 'package:flutter/material.dart';
// import 'package:pet_project/utils/loger.dart';
// import 'package:pet_project/utils/theme_data.dart';

// void _log(dynamic message) => Logger.projectLog(message, name: 'theme_data');

// class HomePage extends StatefulWidget {
//   const HomePage({super.key});

//   @override
//   State<HomePage> createState() => _HomePageState();
// }

// class _HomePageState extends State<HomePage> {
//   @override
//   Widget build(BuildContext context) {
//     return
//   }
// }
