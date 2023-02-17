import 'package:college_events/pages/about_college.dart';
import 'package:college_events/pages/college_faculty.dart';
import 'package:college_events/pages/events_page.dart';
import 'package:flutter/material.dart';

import 'home_drawer_menu_item.dart';

class HomeDrawerBody extends StatelessWidget {
  const HomeDrawerBody({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(10),
      child: Column(
        children: [
          HomeDrawerMenuItem(
            title: "الرئسية",
            icon: Icons.home,
            onTap: () {
              Navigator.of(context).pop();
            },
          ),
          const SizedBox(height: 10.0),
          HomeDrawerMenuItem(
            title: "الفعاليات",
            icon: Icons.event,
            onTap: () {
              Navigator.of(context).pop();
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (_) => const EventsPage(),
                ),
              );
            },
          ),
          const SizedBox(height: 10.0),
          HomeDrawerMenuItem(
            icon: Icons.group,
            title: "طاقم التدريس",
            onTap: () async {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: ((context) => const CollegeFaculty())));
            },
          ),
          const SizedBox(height: 10.0),
          HomeDrawerMenuItem(
            title: "حول الكلية",
            icon: Icons.info_outline,
            onTap: () {
              Navigator.of(context).pop();
              Navigator.of(context).push(
                MaterialPageRoute<void>(
                  builder: (_) => const AboutCollege(),
                ),
              );
            },
          ),
        ],
      ),
    );
  }
}
