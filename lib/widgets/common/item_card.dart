import 'package:flutter/material.dart';

class ItemCard extends StatelessWidget {
  final String id;
  final String title;
  final String image;

  // ignore: use_key_in_widget_constructors
  const ItemCard({
    required this.id,
    required this.title,
    required this.image,
  });

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
                    image,
                    height: 200,
                    width: double.infinity,
                    fit: BoxFit.cover,
                  ),
                ),
                Container(
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
                      stops: const [0.5, 1],
                    ),
                  ),
                  height: 230,
                  alignment: Alignment.bottomRight,
                  child: Text(
                    title,
                    style: Theme.of(context).textTheme.headline6,
                    overflow: TextOverflow.fade,
                  ),
                ),
              ],
            ),
            Padding(
              padding: const EdgeInsets.all(15),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  const Align(
                      alignment: Alignment.topRight,
                      child: Text(
                        "كلية العلوم والحاسوب",
                        style: TextStyle(fontSize: 18),
                      )),
                  const SizedBox(
                    height: 5,
                  ),
                  Row(
                    children: const [
                      Icon(Icons.date_range),
                      SizedBox(
                        width: 10,
                      ),
                      Align(
                          alignment: Alignment.topRight,
                          child: Text("2023/1/15")),
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
