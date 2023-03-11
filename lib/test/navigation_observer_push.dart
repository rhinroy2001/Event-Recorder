import 'dart:html';

import 'package:flutter/material.dart';

typedef OnObservation = void Function(
    Route<dynamic> route, Route<dynamic> previousRoute);

class TestNavigatorObserver extends NavigatorObserver {
  OnObservation? onPushed;

  // @override
  // void didPush(Route<dynamic> route, Route<dynamic> previousRoute) {
  //   if (onPushed != null) {
  //     onPushed!(route, previousRoute);
  //   }
  // }

  attachPushRouteObserver(String expectedRouteName, Function pushCallback) {
    onPushed = ((route, previousRoute) {
      final isExpectedRoutePushed = route.settings.name == expectedRouteName;
      if (isExpectedRoutePushed) {
        pushCallback();
      }
    });
  }
}
