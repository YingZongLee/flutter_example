import 'package:flutter/material.dart';

class FurnitureDemo extends StatefulWidget {
  const FurnitureDemo({super.key});

  @override
  State<FurnitureDemo> createState() => _TextFormDemoState();
}

class _TextFormDemoState extends State<FurnitureDemo> {
  final TextEditingController _controller =
      TextEditingController(text: '吉祥話を入力してください');

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  void _showDialogAndClearText() async {
    await showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: const Text('吉祥話'),
          content: Text(_controller.text),
          actions: <Widget>[
            TextButton(
              onPressed: () {
                Navigator.of(context).pop();
              },
              child: const Text('OK'),
            ),
          ],
        );
      },
    );
    _controller.clear();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        Column(
          children: [
            Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 8, vertical: 16),
                child: TextFormField(
                  autofocus: true,
                  decoration: const InputDecoration(
                    border: OutlineInputBorder(),
                    labelText: '吉祥話を入力してください',
                  ),
                  controller: _controller,
                )),
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                  textStyle: const TextStyle(fontSize: 20)),
              onPressed: _showDialogAndClearText,
              child: const Text('Enter'),
            ),
          ],
        ),
      ],
    );
  }
}
