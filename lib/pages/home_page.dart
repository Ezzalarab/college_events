// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'dart:convert';

import 'package:flutter/material.dart';

import 'package:college_events/widgets/common/item_card.dart';
import 'package:college_events/widgets/home/home_carousel/home_carousel.dart';
import 'package:college_events/widgets/home/home_drawer/home_drawer.dart';

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
          children: [
            SizedBox(
              child: HomeCarousel(),
            ),
            ItemCard(
                cardData: CardData(
              id: "1",
              title: "آداب شرورة تدشن المعرض التوعوي بأضرار المخدرات",
              dateMonth: " ربيع الاخر",
              dateTody: "10",
              dateHoure: "1:30–3:30 pm",
              image: 'images/tree.jpg',
            )),
            ItemCard(
                cardData: CardData(
              id: "1",
              title: "as",
              dateMonth: " ربيع الاخر",
              dateHoure: "1:30–3:30 pm",
              dateTody: "10",
              image: 'images/tree.jpg',
            )),
            ItemCard(
                cardData: CardData(
              id: "1",
              title: "as",
              dateMonth: " ربيع الاخر",
              dateTody: "10",
              dateHoure: "1:30–3:30 pm",
              image: 'images/tree.jpg',
            )),
          ],
        ),
      ),
      drawer: const HomeDrower(),
    );
  }
}

class CardData {
  final String id;
  final String title;
  final String image;
  final String dateTody;
  final String dateMonth;
  final String dateHoure;
  CardData({
    required this.id,
    required this.title,
    required this.image,
    required this.dateTody,
    required this.dateMonth,
    required this.dateHoure,
  });

  // CardData copyWith({
  //   String? id,
  //   String? title,
  //   String? image,
  //   String? dateTody,
  //   String? dateHoure,
  // }) {
  //   return CardData(
  //     id: id ?? this.id,
  //     title: title ?? this.title,
  //     image: image ?? this.image,
  //     dateTody: dateTody ?? this.dateTody,
  //     dateHoure: dateHoure ?? this.dateHoure,
  //   );
  // }

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'id': id,
      'title': title,
      'image': image,
      'dateTody': dateTody,
      'dateHoure': dateHoure,
    };
  }

  // factory CardData.fromMap(Map<String, dynamic> map) {
  //   return CardData(
  //     id: map['id'] as String,
  //     title: map['title'] as String,
  //     image: map['image'] as String,
  //     dateTody: map['dateTody'] as String,
  //     dateHoure: map['dateHoure'] as String,
  //   );
  // }

  // String toJson() => json.encode(toMap());

  // factory CardData.fromJson(String source) =>
  //     CardData.fromMap(json.decode(source) as Map<String, dynamic>);

  // @override
  // String toString() {
  //   return 'CardData(id: $id, title: $title, image: $image, dateTody: $dateTody, dateHoure: $dateHoure)';
  // }

  // @override
  // bool operator ==(covariant CardData other) {
  //   if (identical(this, other)) return true;

  //   return other.id == id &&
  //       other.title == title &&
  //       other.image == image &&
  //       other.dateTody == dateTody &&
  //       other.dateHoure == dateHoure;
  // }

  @override
  int get hashCode {
    return id.hashCode ^
        title.hashCode ^
        image.hashCode ^
        dateTody.hashCode ^
        dateHoure.hashCode;
  }
}
