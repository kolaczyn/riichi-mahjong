import 'package:flutter/material.dart';
import 'package:mahjong/src/models/tile_id.dart';

class Tile extends StatelessWidget {
  const Tile(
      {super.key,
      required this.selected,
      required this.tileId,
      required this.toggleSelected,
      this.visible = true});

  final TileId tileId;
  final bool selected;
  final bool visible;
  final void Function(TileId) toggleSelected;

  static double width = 30;
  static double height = 40;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => toggleSelected(tileId),
      child: Container(
        padding: const EdgeInsets.all(2),
        decoration: BoxDecoration(
          border: Border.all(
            color: selected ? Colors.redAccent : Colors.transparent,
            width: 2,
          ),
        ),
        child: Stack(
          children: [
            Image(
              image: const AssetImage('assets/images/tiles/Front.png'),
              width: width,
              height: height,
            ),
            Image(
              image: AssetImage('assets/images/tiles/${tileId.type.name}.png'),
              width: width,
              height: height,
            ),
            if (!visible)
              Image(
                image: const AssetImage('assets/images/tiles/back.png'),
                width: width,
                height: height,
              ),
          ],
        ),
      ),
    );
  }
}
