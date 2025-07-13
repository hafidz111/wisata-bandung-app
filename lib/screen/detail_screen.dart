import 'package:flutter/material.dart';
import 'package:wisatabandung/model/tourism_place.dart';
import 'package:wisatabandung/widget/detail_mobile_page.dart';
import 'package:wisatabandung/widget/detail_web_page.dart';

var informationTextStyle = const TextStyle(fontFamily: 'Oxygen');

class DetailScreen extends StatelessWidget {
  final TourismPlace place;

  const DetailScreen({super.key, required this.place});

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (BuildContext context, BoxConstraints constrains) {
        return constrains.maxWidth > 800
            ? DetailWebPage(place: place)
            : DetailMobilePage(place: place);
      },
    );
  }
}
