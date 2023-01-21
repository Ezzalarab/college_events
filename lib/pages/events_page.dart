import 'package:college_events/widgets/common/event_card.dart';
import 'package:flutter/material.dart';

class EventsPage extends StatefulWidget {
  const EventsPage({Key? key}) : super(key: key);

  @override
  State<EventsPage> createState() => _EventsPageState();
}

class _EventsPageState extends State<EventsPage> {
  List<EventData> events = [
    EventData(
      id: "1",
      title: "آداب شرورة تدشن المعرض التوعوي بأضرار المخدرات",
      dateMonth: " ربيع الاخر",
      dateTody: "10",
      dateHoure: "1:30–3:30 pm",
      image: 'images/tree.jpg',
      place: "قاعة الملك",
    ),
    EventData(
      id: "1",
      title: "آداب شرورة تدشن المعرض التوعوي بأضرار المخدرات",
      dateMonth: " ربيع الاخر",
      dateTody: "10",
      dateHoure: "1:30–3:30 pm",
      image: 'images/tree.jpg',
      place: "قاعة الملك",
    ),
    EventData(
      id: "1",
      title: "آداب شرورة تدشن المعرض التوعوي بأضرار المخدرات",
      dateMonth: " ربيع الاخر",
      dateTody: "10",
      dateHoure: "1:30–3:30 pm",
      image: 'images/tree.jpg',
      place: "قاعة الملك",
    ),
    EventData(
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
        title: const Text("الرئيسية"),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Padding(
              padding: EdgeInsets.symmetric(
                horizontal: 30,
                vertical: 10,
              ),
              child: Text(
                "آخر الأخبار",
                style: TextStyle(
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
            EventCard(
              eventData: EventData(
                id: "1",
                title: "آداب شرورة تدشن المعرض التوعوي بأضرار المخدرات",
                dateMonth: " ربيع الاخر",
                dateTody: "10",
                dateHoure: "1:30–3:30 pm",
                image: 'images/tree.jpg',
                place: "قاعة الملك",
              ),
            ),
            EventCard(
              eventData: EventData(
                id: "1",
                title: "آداب شرورة تدشن المعرض التوعوي بأضرار المخدرات",
                dateMonth: " ربيع الاخر",
                dateTody: "10",
                dateHoure: "1:30–3:30 pm",
                image: 'images/tree.jpg',
                place: "قاعة الملك",
              ),
            ),
          ],
        ),
      ),
    );
  }
}
