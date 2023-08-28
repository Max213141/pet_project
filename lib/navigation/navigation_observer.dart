import 'package:flutter/material.dart';
import 'package:pet_project/utils/loger.dart';

void _log(dynamic message) =>
    Logger.projectLog(message, name: 'navigation_observer');

class MyNavigatorObserver extends NavigatorObserver {
  @override
  void didPush(Route<dynamic> route, Route<dynamic>? previousRoute) {
    _log('pushed to $route from $previousRoute');
  }

  @override
  void didPop(Route<dynamic> route, Route<dynamic>? previousRoute) {
    _log('poped to $route from $previousRoute');
  }
}
