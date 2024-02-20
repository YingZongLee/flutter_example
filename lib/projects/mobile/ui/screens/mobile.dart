import 'package:flutter/material.dart';

class Mobile extends StatelessWidget {
  const Mobile({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('吉祥話を入力してください'),
        ),
        body: const Center(child: Text('ここに吉祥話が表示されます')));
  }
}
