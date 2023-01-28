import 'package:flutter/material.dart';

class HomeDrawerHeader extends StatelessWidget {
  const HomeDrawerHeader({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return DrawerHeader(
      padding: const EdgeInsets.fromLTRB(16.0, 16.0, 16.0, 8.0),
      decoration: BoxDecoration(
        color: Theme.of(context).primaryColor,
      ),
      child: InkWell(
        onTap: () {},
        child: Center(
          child: Column(
            children: const [
              CircleAvatar(
                backgroundImage: AssetImage("images/na_univercity.jpg"),
                radius: 55,
              ),
              // Container(
              //   height: 100,
              //   width: 100,
              //   decoration: BoxDecoration(
              //     borderRadius: BorderRadius.circular(50),
              //   ),
              //   child: Center(
              //     child: Image.asset(
              //       "images/na_univercity.jpg",
              //       fit: BoxFit.fill,
              //     ),
              //   ),
              // ),
              const SizedBox(height: 4),
              const Text(
                "كلية العلوم والحاسوب",
                style: TextStyle(
                  fontSize: 16,
                  color: Colors.white,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
