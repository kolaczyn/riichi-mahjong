import 'package:flutter/material.dart';
import 'package:mahjong/src/components/tiles_row.dart';
import 'package:mahjong/src/consts/all_tiles.dart';
import 'package:mahjong/src/models/tile_id.dart';

/// Displays a list of SampleItems.
class AllTilesView extends StatefulWidget {
  const AllTilesView({
    super.key,
  });

  static const routeName = '/';

  @override
  State<AllTilesView> createState() => _AllTilesViewState();
}

class _AllTilesViewState extends State<AllTilesView> {
  List<TileId> selected = [];

  void toggleSelected(TileId tile) {
    if (selected.contains(tile)) {
      selected.remove(tile);
    } else {
      selected.add(tile);
    }
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('All Riichi Mahjong tiles'),
      ),
      body: Column(children: [
        TilesRow(
          tiles: [...allWindTiles, ...allDragonTiles],
          selected: selected,
          toggleSelected: toggleSelected,
        ),
        TilesRow(
          tiles: allManTiles,
          selected: selected,
          toggleSelected: toggleSelected,
        ),
        TilesRow(
          tiles: allPinTiles,
          selected: selected,
          toggleSelected: toggleSelected,
        ),
        TilesRow(
          tiles: allSouTiles,
          selected: selected,
          toggleSelected: toggleSelected,
        ),
      ]),
    );
  }
}
