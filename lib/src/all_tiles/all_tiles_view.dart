import 'package:flutter/material.dart';
import 'package:mahjong/src/components/tiles_row.dart';
import 'package:mahjong/src/consts/all_tiles.dart';

/// Displays a list of SampleItems.
class AllTilesView extends StatelessWidget {
  const AllTilesView({
    super.key,
  });

  static const routeName = '/';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Riichi Mahjong tiles'),
      ),
      body: Column(children: [
        TilesRow(tiles: [...allWindTiles, ...allDragonTiles]),
        TilesRow(tiles: allManTiles),
        TilesRow(tiles: allPinTiles),
        TilesRow(tiles: allSouTiles),
      ]),
    );
  }
}
