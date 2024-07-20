import 'package:mahjong/src/eums/Tiles.dart';

extension TilesExtension on Tiles {
  String get name {
    switch (this) {
      case Tiles.man1:
        return "man1";
      case Tiles.man2:
        return "man2";
      case Tiles.man3:
        return "man3";
      case Tiles.man4:
        return "man4";
      case Tiles.man5:
        return "man5";

      case Tiles.man5Dora:
        return "man5Dora";
      case Tiles.man6:
        return "man6";
      case Tiles.man7:
        return "man7";
      case Tiles.man8:
        return "man8";
      case Tiles.man9:
        return "man9";

      case Tiles.pin1:
        return "pin1";
      case Tiles.pin2:
        return "pin2";
      case Tiles.pin3:
        return "pin3";
      case Tiles.pin4:
        return "pin4";
      case Tiles.pin5:
        return "pin5";
      case Tiles.pin5Dora:
        return "pin5Dora";
      case Tiles.pin6:
        return "pin6";
      case Tiles.pin7:
        return "pin7";
      case Tiles.pin8:
        return "pin8";
      case Tiles.pin9:
        return "pin9";

      case Tiles.sou1:
        return "sou1";
      case Tiles.sou2:
        return "sou2";
      case Tiles.sou3:
        return "sou3";
      case Tiles.sou4:
        return "sou4";
      case Tiles.sou5Dora:
        return "sou5Dora";
      case Tiles.sou6:
        return "sou6";
      case Tiles.sou7:
        return "sou7";
      case Tiles.sou8:
        return "sou8";
      case Tiles.sou9:
        return "sou9";

      case Tiles.nan:
        return "nan";
      case Tiles.pei:
        return "pei";
      case Tiles.shaa:
        return "shaa";
      case Tiles.ton:
        return "ton";

      case Tiles.chun:
        return "chun";
      case Tiles.haku:
        return "haku";
      case Tiles.hatsu:
        return "hatsu";

      case Tiles.back:
        return "back";
      case Tiles.blank:
        return "blank";
      case Tiles.front:
        return "front";
      default:
        return "Back";
    }
  }
}
