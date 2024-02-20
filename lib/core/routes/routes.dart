import 'package:flutter/material.dart';
import 'package:flutter_exercise/core/shared/domain/menu.dart';
import 'package:flutter_exercise/core/shared/ui/screens/home.dart';
import 'package:flutter_exercise/projects/furniture/ui/screens/furniture.dart';
import 'package:flutter_exercise/projects/mobile/ui/screens/mobile.dart';

class Routes {
  static Map<String, WidgetBuilder> routes = {
    '/': (context) => const Home(),
    Menu.furniture.route: (_) => const Furniture(),
    Menu.mobile.route: (_) => const Mobile(),
  };
}
