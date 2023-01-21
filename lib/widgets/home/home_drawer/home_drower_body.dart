import 'package:college_events/pages/about_college.dart';
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
      child: Wrap(
        runSpacing: 10,
        children: [
          HomeDrawerMenuItem(
            title: "الرئسية",
            icon: Icons.home,
            onTap: () {
              // Navigator.of(context).pushNamed(SignInPage.routeName);
            },
          ),
          HomeDrawerMenuItem(
            title: "الفعاليات",
            icon: Icons.event,
            onTap: () {
              // Navigator.of(context).pushNamed(SignUpPage.routeName);
            },
          ),
          HomeDrawerMenuItem(
            icon: Icons.group,
            title: "طاقم التدريس",
            onTap: () async {
              // Navigator.of(context).pushNamed(SettingPage.routeName);
            },
          ),
          const Divider(color: Colors.black54),
          HomeDrawerMenuItem(
            title: "حول الكلية",
            icon: Icons.info_outline,
            onTap: () {
              Navigator.of(context).pushReplacement(
                MaterialPageRoute<void>(
                  builder: (BuildContext context) => const AboutCollege(),
                ),
              );
            },
          ),
        ],
      ),
    );
  }
}
