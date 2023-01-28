import 'package:college_events/widgets/faculty/person_card.dart';
import 'package:flutter/material.dart';

class CollegeFaculty extends StatefulWidget {
  const CollegeFaculty({super.key});

  @override
  State<CollegeFaculty> createState() => _CollegeFacultyState();
}

class _CollegeFacultyState extends State<CollegeFaculty> {
  List<Doctor> doctors = [
    Doctor(
      name: "د. محمد علي حمدي",
      img: "images/doctor.jpg",
      disc:
          "عميد كلية علوم الحاسب ونظم المعلومات.\nحرصت جامعة نجران منذ نشأتها على إطلاق برامج نوعية في مجالات التقنية باستحداث كلية علوم الحاسب ونظم المعلومات.",
    ),
    Doctor(
      name: "د. محمد علي حمدي",
      img: "images/doctor.jpg",
      disc:
          "عميد كلية علوم الحاسب ونظم المعلومات.\nحرصت جامعة نجران منذ نشأتها على إطلاق برامج نوعية في مجالات التقنية باستحداث كلية علوم الحاسب ونظم المعلومات.",
    ),
    Doctor(
      name: "د. محمد علي حمدي",
      img: "images/doctor.jpg",
      disc:
          "عميد كلية علوم الحاسب ونظم المعلومات.\nحرصت جامعة نجران منذ نشأتها على إطلاق برامج نوعية في مجالات التقنية باستحداث كلية علوم الحاسب ونظم المعلومات.",
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("هئية التدريس"),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            const Padding(
              padding: EdgeInsets.all(30),
              child: Text(
                "أعضاء هيئة التدريس",
                style: TextStyle(
                  color: Colors.black87,
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            ListView.builder(
              shrinkWrap: true,
              physics: const NeverScrollableScrollPhysics(),
              itemCount: doctors.length,
              itemBuilder: (context, index) => PersonCard(
                person: doctors[index],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
