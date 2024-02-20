import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_exercise/core/app/app.dart';

void main() {
  SystemChrome.setSystemUIOverlayStyle(
    const SystemUiOverlayStyle(statusBarColor: Colors.transparent),
  );
  runApp(const ProjectApp());
}
