import 'package:flutter/material.dart';
import 'package:flutter_exercise/projects/furniture/ui/widgets/furniture_demo.dart';

class Furniture extends StatelessWidget {
  const Furniture({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('吉祥話を入力してください'),
      ),
      body: const FurnitureDemo(),
    );
  }
}
