import 'package:flutter/material.dart';

class CollegeFaculty extends StatelessWidget {
  const CollegeFaculty({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("أعضاء هيئة التدريس"),
      ),
      body: const Center(
        child: Text(
          'كاردات الدكاترة',
        ),
      ),
    );
  }
}
