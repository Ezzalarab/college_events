import 'package:college_events/widgets/common/item_card.dart';
import 'package:college_events/widgets/home/home_carousel/home_carousel.dart';
import 'package:college_events/widgets/home/home_drawer/home_drawer.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("الرئيسية"),
        centerTitle: true,
      ),
      body: Center(
        child: ListView(
          children: const [
            SizedBox(
              child: HomeCarousel(),
            ),
            ItemCard(
              id: "1",
              title: "as",
              image: 'images/tree.jpg',
            ),
            ItemCard(
              id: "1",
              title: "as",
              image: 'images/tree.jpg',
            ),
            ItemCard(
              id: "1",
              title: "as",
              image: 'images/tree.jpg',
            )
          ],
        ),
      ),
      drawer: const HomeDrower(),
    );
  }
}
