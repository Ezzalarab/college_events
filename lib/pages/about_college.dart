import 'package:flutter/material.dart';

class AboutCollege extends StatelessWidget {
  const AboutCollege({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("حول الكلية"),
      ),
      body: const Center(
        child: Text(
          'الأقسام والأماكن',
        ),
      ),
    );
  }
}
