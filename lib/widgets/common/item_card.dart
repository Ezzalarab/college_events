import 'package:college_events/pages/home_page.dart';
import 'package:flutter/material.dart';

class ItemCard extends StatelessWidget {
  CardData cardData;

  // ignore: use_key_in_widget_constructors
  ItemCard({Key? key, required this.cardData}) : super(key: key);

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
                    cardData.image,
                    height: 200,
                    width: double.infinity,
                    fit: BoxFit.cover,
                  ),
                ),
                Positioned(
                  // top: 0,

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
                        stops: const [0.5, 1],
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
                          cardData.dateTody,
                          style: TextStyle(color: Colors.amber, fontSize: 50),
                          overflow: TextOverflow.fade,
                        ),
                        Text(
                          cardData.dateMonth,
                          style: TextStyle(color: Colors.amber, fontSize: 30),
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
                        cardData.title,
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
