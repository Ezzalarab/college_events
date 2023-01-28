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
            children: [
              SizedBox(
                height: 100,
                width: 120,
                child: Center(
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(20),
                    child: Image.asset(
                      "images/na_univercity.jpg",
                      fit: BoxFit.contain,
                      height: 80,
                    ),
                  ),
                ),
              ),
              const SizedBox(height: 4),
              const Text(
                "كلية علوم الحاسب ونظم المعلومات",
                style: TextStyle(
                  fontSize: 14,
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
