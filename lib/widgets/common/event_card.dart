import 'package:college_events/widgets/common/news_card.dart';
import 'package:flutter/material.dart';

class EventCard extends StatelessWidget {
  final Event eventData;
  const EventCard({Key? key, required this.eventData}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () => {},
      child: Card(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(20),
        ),
        elevation: 7,
        margin: const EdgeInsets.symmetric(horizontal: 25, vertical: 12),
        child: Column(
          children: [
            Stack(
              children: [
                ClipRRect(
                  borderRadius: const BorderRadius.only(
                    topLeft: Radius.circular(20),
                    topRight: Radius.circular(20),
                  ),
                  child: Image.asset(
                    eventData.image,
                    height: 200,
                    width: double.infinity,
                    fit: BoxFit.cover,
                  ),
                ),
                Positioned(
                  bottom: 5,
                  width: MediaQuery.of(context).size.width,
                  child: Container(
                    // width: double.infinity,
                    padding: const EdgeInsets.symmetric(
                      vertical: 10,
                      horizontal: 20,
                    ),
                    decoration: BoxDecoration(
                      gradient: LinearGradient(
                        begin: Alignment.topCenter,
                        end: Alignment.bottomCenter,
                        colors: [
                          Colors.black.withOpacity(0),
                          Colors.black.withOpacity(.8),
                        ],
                        stops: const [0.2, 1],
                      ),
                    ),
                    height: 230,
                    alignment: Alignment.bottomRight,
                  ),
                ),
                SizedBox(
                  height: 200,
                  child: Center(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          eventData.dateTody,
                          style: TextStyle(
                            color: Theme.of(context).colorScheme.secondary,
                            fontSize: 60,
                          ),
                          overflow: TextOverflow.fade,
                        ),
                        Text(
                          eventData.dateMonth,
                          style: TextStyle(
                            color: Theme.of(context).colorScheme.secondary,
                            fontSize: 30,
                          ),
                          overflow: TextOverflow.fade,
                        ),
                      ],
                    ),
                  ),
                )
              ],
            ),
            Padding(
              padding: const EdgeInsets.all(15),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Align(
                      alignment: Alignment.topRight,
                      child: Text(
                        eventData.title,
                        style: const TextStyle(fontSize: 18),
                      )),
                  const SizedBox(height: 5),
                  Row(
                    children: [
                      const Icon(Icons.access_time_outlined),
                      const SizedBox(width: 10),
                      const Text("الوقت:"),
                      const SizedBox(width: 10),
                      Align(
                        alignment: Alignment.topRight,
                        child: Text(eventData.dateHoure),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class Event {
  final String id;
  final String title;
  final String image;
  final String dateTody;
  final String dateMonth;
  final String dateHoure;
  final String place;
  Event({
    required this.id,
    required this.title,
    required this.image,
    required this.dateTody,
    required this.dateMonth,
    required this.dateHoure,
    required this.place,
  });
}
