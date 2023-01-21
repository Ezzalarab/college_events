import 'package:flutter/material.dart';

class AboutCollege extends StatelessWidget {
  const AboutCollege({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("حول الكلية"),
        centerTitle: true,
      ),
      body: ListView(
        children: [
          Padding(
            padding: const EdgeInsets.all(15.0),
            child: const Text(
              'لمحة تاريخية',
              textAlign: TextAlign.center,
              style: TextStyle(fontSize: 24),
            ),
          ),
          // Text.rich()
        ],
      ),
    );
  }
}
