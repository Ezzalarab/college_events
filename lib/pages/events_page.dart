import 'package:college_events/main.dart';
import 'package:college_events/widgets/events/event_card.dart';
import 'package:flutter/material.dart';

class EventsPage extends StatefulWidget {
  const EventsPage({Key? key}) : super(key: key);

  @override
  State<EventsPage> createState() => _EventsPageState();
}

class _EventsPageState extends State<EventsPage> {
  List<Event> events = [
    Event(
      id: "1",
      title: "آداب شرورة تدشن المعرض التوعوي بأضرار المخدرات",
      dateMonth: " ربيع الاخر",
      dateTody: "10",
      dateHoure: "1:30–3:30 pm",
      image: 'images/tree.jpg',
      place: "قاعة الملك",
    ),
    Event(
      id: "1",
      title: "آداب شرورة تدشن المعرض التوعوي بأضرار المخدرات",
      dateMonth: " ربيع الأول",
      dateTody: "06",
      dateHoure: "1:30–3:30 pm",
      image: 'images/place.jpg',
      place: "القاعة الكبرى",
    ),
    Event(
      id: "1",
      title: "آداب شرورة تدشن المعرض التوعوي بأضرار المخدرات",
      dateMonth: " ربيع الاخر",
      dateTody: "10",
      dateHoure: "1:30–3:30 pm",
      image: 'images/tree.jpg',
      place: "قاعة الملك",
    ),
    Event(
      id: "1",
      title: "آداب شرورة تدشن المعرض التوعوي بأضرار المخدرات",
      dateMonth: " ربيع الاخر",
      dateTody: "10",
      dateHoure: "1:30–3:30 pm",
      image: 'images/tree.jpg',
      place: "قاعة الملك",
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("الفعاليات"),
        backgroundColor: primColor,
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Padding(
              padding: EdgeInsets.all(30),
              child: Text(
                "فعاليات الكلية",
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
              itemCount: events.length,
              itemBuilder: (context, index) => EventCard(
                eventData: events[index],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
