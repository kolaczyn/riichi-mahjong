import 'package:mahjong/src/eums/all_tiles.dart';

class TileId {
  const TileId({
    required this.type,
    required this.idx,
  });

  final Tiles type;
  final int idx;
}
