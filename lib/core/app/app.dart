import 'package:flutter/material.dart';
import 'package:flutter_exercise/core/routes/routes.dart';
import 'package:google_fonts/google_fonts.dart';

class ProjectApp extends StatelessWidget {
  const ProjectApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Lesson 2 Demo',
      theme: ThemeData(
        scaffoldBackgroundColor: Colors.grey.shade50,
        appBarTheme: AppBarTheme(
          elevation: 0,
          titleTextStyle: GoogleFonts.poppins(
            fontWeight: FontWeight.w600,
            fontSize: 20,
            color: Colors.grey.shade800,
          ),
          backgroundColor: Colors.grey.shade50,
        ),
        colorScheme: ColorScheme.fromSwatch(
          backgroundColor: Colors.grey.shade50,
        ),
        textTheme: GoogleFonts.poppinsTextTheme(),
        primarySwatch: Colors.green,
      ),
      initialRoute: '/',
      routes: Routes.routes,
    );
  }
}
