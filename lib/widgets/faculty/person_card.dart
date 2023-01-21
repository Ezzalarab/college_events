// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';

class PersonCard extends StatelessWidget {
  const PersonCard({Key? key, required this.person}) : super(key: key);
  final Doctor person;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          children: [
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: CircleAvatar(
                backgroundImage: AssetImage(
                  person.img,
                ),
                radius: 60,
              ),
            ),
            const SizedBox(width: 10),
            Center(
              child: Text(
                person.name,
                style: const TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                    color: Colors.black45),
              ),
            ),
          ],
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 10),
          child: Text(
            person.disc,
            style: const TextStyle(
              color: Colors.black87,
              height: 1.5,
            ),
          ),
        ),
        const SizedBox(height: 20),
      ],
    );
  }
}

class Doctor {
  final String name;
  final String img;
  final String disc;
  Doctor({
    required this.name,
    required this.img,
    required this.disc,
  });
}
