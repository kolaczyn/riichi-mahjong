import 'package:mahjong/src/eums/all_tiles.dart';
import 'package:mahjong/src/models/tile_id.dart';

List<TileId> makeSet(List<Tiles> tiles) {
  List<TileId> output = [];

  for (var entry in tiles) {
    for (var idx in [0, 1, 2, 3]) {
      output.add(TileId(type: entry, idx: idx));
    }
  }

  // log stuff

  print(output.length);

  return output;
}

var dragonTiles = [
  Tiles.chun,
  Tiles.haku,
  Tiles.hatsu,
];

var allDragonTiles = makeSet(dragonTiles);

var windTiles = [
  Tiles.ton,
  Tiles.nan,
  Tiles.pei,
  Tiles.shaa,
];

var allWindTiles = makeSet(windTiles);

var manTiles = [
  Tiles.man1,
  Tiles.man2,
  Tiles.man3,
  Tiles.man4,
  Tiles.man5,
  // Tiles.man5Dora,
  Tiles.man6,
  Tiles.man7,
  Tiles.man8,
  Tiles.man9,
];

var allManTiles = makeSet(manTiles);

var pinTiles = [
  Tiles.pin1,
  Tiles.pin2,
  Tiles.pin3,
  Tiles.pin4,
  Tiles.pin5,
  // Tiles.pin5Dora,
  Tiles.pin6,
  Tiles.pin7,
  Tiles.pin8,
  Tiles.pin9,
];

var allPinTiles = makeSet(pinTiles);

var souTiles = [
  Tiles.sou1,
  Tiles.sou2,
  Tiles.sou3,
  Tiles.sou4,
  Tiles.sou5,
  // Tiles.sou5Dora,
  Tiles.sou6,
  Tiles.sou7,
  Tiles.sou8,
  Tiles.sou9,
];

var allSouTiles = makeSet(souTiles);
