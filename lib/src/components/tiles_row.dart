import 'package:flutter/material.dart';
import 'package:mahjong/src/components/tile.dart';
import 'package:mahjong/src/eums/all_tiles.dart';

class TilesRow extends StatelessWidget {
  const TilesRow({super.key, required this.tiles});

  final List<Tiles> tiles;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 80,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: tiles.length,
        itemBuilder: (context, index) =>
            SizedBox(width: 60, child: Tile(id: tiles[index])),
      ),
    );
  }
}
