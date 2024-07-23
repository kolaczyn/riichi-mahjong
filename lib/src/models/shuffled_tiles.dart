import 'package:mahjong/src/consts/all_tiles.dart';
import 'package:mahjong/src/models/tile_id.dart';

class ShuffledTiles {
  List<TileId> deadWall = [];
  List<TileId> wall = [];

  List<TileId> eastHand = [];
  List<TileId> southHand = [];
  List<TileId> westHand = [];
  List<TileId> northHand = [];

  ShuffledTiles() {
    deadWall = shuffledTiles.sublist(0, 14);
    wall = shuffledTiles.sublist(14, 70);
    eastHand = shuffledTiles.sublist(70, 82);
    southHand = shuffledTiles.sublist(82, 94);
    westHand = shuffledTiles.sublist(94, 106);
    northHand = shuffledTiles.sublist(106, 118);
  }
}
