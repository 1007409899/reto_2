import 'package:flutter/material.dart';
import 'package:reto_2/pages/viewcar.dart';

import '../pages/details.dart';

class AppRoutes {
  Map<String, WidgetBuilder>? _routes;

  AppRoutes() {
    createRoutes();
  }

  void createRoutes() {
    _routes = {
      "/": (BuildContext context) => ViewCar(),
      "second": (BuildContext context) => const Second(),
    };
  }

  get getRoutes => _routes;
}
