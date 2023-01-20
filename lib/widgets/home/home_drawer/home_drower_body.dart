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
            title: "تسجيل دخول",
            icon: Icons.login_rounded,
            onTap: () {
              // Navigator.of(context).pushNamed(SignInPage.routeName);
            },
          ),
          HomeDrawerMenuItem(
            title: "إنشاء حساب",
            icon: Icons.person_add_outlined,
            onTap: () {
              // Navigator.of(context).pushNamed(SignUpPage.routeName);
            },
          ),
          HomeDrawerMenuItem(
            icon: Icons.settings_outlined,
            title: "إعدادات",
            onTap: () async {
              // Navigator.of(context).pushNamed(SettingPage.routeName);
            },
          ),
          const Divider(color: Colors.black54),
          HomeDrawerMenuItem(
            title: "حول التبيق",
            icon: Icons.info_outline,
            onTap: () {},
          ),
        ],
      ),
    );
  }
}