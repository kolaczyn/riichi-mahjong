import 'package:flutter/material.dart';
import 'package:mahjong/src/components/tile.dart';
import 'package:mahjong/src/models/tile_id.dart';

class TilesRow extends StatelessWidget {
  const TilesRow({
    super.key,
    required this.tiles,
    required this.selected,
    required this.toggleSelected,
    this.visible = true,
  });

  final List<TileId> tiles;
  final List<TileId> selected;
  final bool visible;
  final void Function(TileId) toggleSelected;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: Tile.height,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: tiles.length,
        itemBuilder: (context, index) {
          var curr = tiles[index];
          return SizedBox(
            width: Tile.width,
            child: Tile(
              tileId: curr,
              selected: selected.contains(curr),
              toggleSelected: toggleSelected,
              visible: visible,
            ),
          );
        },
      ),
    );
  }
}
