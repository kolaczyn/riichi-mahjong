import 'package:flutter/material.dart';
import 'package:mahjong/src/components/tile.dart';
import 'package:mahjong/src/models/tile_id.dart';

class TilesRow extends StatelessWidget {
  const TilesRow({super.key, required this.tiles});

  final List<TileId> tiles;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: Tile.height,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: tiles.length,
        itemBuilder: (context, index) {
          return SizedBox(
            width: Tile.width,
            child: Tile(
              id: tiles[index].type,
            ),
          );
        },
      ),
    );
  }
}
