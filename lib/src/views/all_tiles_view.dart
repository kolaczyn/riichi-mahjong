import 'package:flutter/material.dart';
import 'package:mahjong/src/components/tiles_row.dart';
import 'package:mahjong/src/consts/all_tiles.dart';
import 'package:mahjong/src/eums/tiles_extension.dart';
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
    var isRemoving = selected.contains(tile);
    var isMax = selected.length >= 14;
    if (isRemoving) {
      selected.remove(tile);
    } else if (!isMax) {
      selected.add(tile);
    }
    selected.sort(tileComparator);
    setState(() {});
  }

  int tileComparator(TileId a, TileId b) {
    return a.type.sortOrder - b.type.sortOrder;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('All Riichi Mahjong tiles'),
      ),
      body: Column(
        children: [
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
          Text(
            "Your hand ${selected.length} / 14",
          ),
          TilesRow(
              tiles: selected,
              // this is a hack to make the selected tiles appear without red selection
              selected: const [],
              toggleSelected: toggleSelected),
        ],
      ),
    );
  }
}
