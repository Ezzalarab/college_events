// ignore_for_file: public_member_api_docs, sort_constructors_first

import 'package:college_events/widgets/events/event_card.dart';
import 'package:flutter/material.dart';

import 'package:college_events/widgets/home/news_card.dart';
import 'package:college_events/widgets/home/home_carousel/home_carousel.dart';
import 'package:college_events/widgets/home/home_drawer/home_drawer.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  List<News> news = [
    News(
      id: "n1",
      title: "آداب شرورة تدشن المعرض التوعوي بأضرار المخدرات",
      image: 'images/tree.jpg',
      date: "2023/1/15",
    ),
    News(
      id: "n2",
      title: "آداب شرورة تدشن المعرض التوعوي بأضرار المخدرات",
      image: 'images/tree.jpg',
      date: "2023/1/15",
    ),
    News(
      id: "n3",
      title: "آداب شرورة تدشن المعرض التوعوي بأضرار المخدرات",
      image: 'images/tree.jpg',
      date: "2023/1/15",
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
            const HomeCarousel(),
            const Divider(),
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
              itemCount: news.length,
              itemBuilder: (context, index) => NewsCard(
                newsData: news[index],
              ),
            ),
          ],
        ),
      ),
      drawer: const HomeDrower(),
    );
  }
}
