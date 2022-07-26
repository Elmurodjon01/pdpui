import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('UI'),
      ),
      body: Center(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ReusableText(
              label: 'User',
              define: Colors.red,
            ),
            const SizedBox(
              width: 10.0,
            ),
            ReusableText(
              label: 'Interface',
              define: Colors.green,
            ),
          ],
        ),
      ),
    );
  }
}

class ReusableText extends StatelessWidget {
  String label;
  Color define;
  ReusableText({
    required this.label,
    required this.define,
  });

  @override
  Widget build(BuildContext context) {
    return Text(
      label,
      style: TextStyle(color: define, fontSize: 38.0),
    );
  }
}
