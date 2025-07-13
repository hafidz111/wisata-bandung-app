import 'package:flutter/material.dart';
import 'package:wisatabandung/widget/tourism_place_grid.dart';
import 'package:wisatabandung/widget/tourism_place_list.dart';

class MainScreen extends StatelessWidget {
  const MainScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Wisata Bandung')),
      body: LayoutBuilder(
        builder: (BuildContext context, BoxConstraints constrains) {
          return constrains.maxWidth <= 600
              ? TourismPlaceList()
              : constrains.maxWidth <= 1200
              ? TourismPlaceGrid(gridCount: 4)
              : TourismPlaceGrid(gridCount: 6);
        },
      ),
    );
  }
}
