import 'package:flutter/material.dart';
import 'package:mahjong/src/views/all_tiles_view.dart';
import 'package:mahjong/src/views/game_view.dart';

class StartView extends StatelessWidget {
  const StartView({super.key});

  static const routeName = '/';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Riichi Mahjong'),
        backgroundColor: Colors.green.shade700,
      ),
      backgroundColor: Colors.green.shade700,
      body: Column(
        children: [
          TextButton(
            onPressed: () {
              Navigator.pushNamed(context, GameView.routeName);
            },
            child: const Text('Start game'),
          ),
          TextButton(
            onPressed: () {
              Navigator.pushNamed(context, AllTilesView.routeName);
            },
            child: const Text('View all tiles'),
          ),
        ],
      ),
    );
  }
}
