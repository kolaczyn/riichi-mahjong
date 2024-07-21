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
        title: const Text('All Riichi Mahjong tiles'),
      ),
      body: Column(children: [
        TilesRow(tiles: [...windTiles, ...dragonTiles]),
        const TilesRow(tiles: manTiles),
        const TilesRow(tiles: pinTiles),
        const TilesRow(tiles: souTiles),
      ]),
    );
  }
}
