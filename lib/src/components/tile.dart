import 'package:flutter/material.dart';
import 'package:mahjong/src/eums/Tiles.dart';

class Tile extends StatelessWidget {
  const Tile({super.key, required this.id});

  final Tiles id;

  static double width = 60;
  static double height = 80;

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Image(
          image: const AssetImage('assets/images/tiles/front.png'),
          width: width,
          height: height,
        ),
        Image(
          image: AssetImage('assets/images/tiles/${id.name}.png'),
          width: width,
          height: height,
        ),
      ],
    );
  }
}
