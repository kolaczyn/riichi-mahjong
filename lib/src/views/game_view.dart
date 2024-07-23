import 'package:flutter/material.dart';
import 'package:mahjong/src/views/all_tiles_view.dart';

class GameView extends StatelessWidget {
  const GameView({super.key});

  static const routeName = '/game';

  void navigateToAllTiles(BuildContext context) {
    Navigator.pushNamed(context, AllTilesView.routeName);
  }

  String getLabel(int index) {
    switch (index) {
      case 1:
        return "West";
      case 3:
        return "North";
      case 4:
        return "Center";
      case 5:
        return "South";
      case 7:
        return "East";
      //
      case 0:
      case 2:
      case 6:
      case 8:
      default:
        return '';
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Riichi Mahjong'),
        backgroundColor: Colors.green.shade700,
      ),
      backgroundColor: Colors.green.shade700,
      body: Center(
        child: FractionallySizedBox(
          widthFactor: 1,
          heightFactor: 1,
          child: GridView.builder(
            gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 3,
              childAspectRatio: 1,
            ),
            itemCount: 9,
            itemBuilder: (context, index) {
              return Container(
                margin: const EdgeInsets.all(2.0),
                color: Colors.blue[100 * (index % 9 + 1)],
                child: Center(
                  child: Text(
                    getLabel(index),
                    style: const TextStyle(fontSize: 16),
                  ),
                ),
              );
            },
          ),
        ),
      ),
    );
  }
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    const title = 'Grid List';

    return MaterialApp(
      title: title,
      home: Scaffold(
        appBar: AppBar(
          title: const Text(title),
        ),
        body: GridView.count(
          // Create a grid with 2 columns. If you change the scrollDirection to
          crossAxisCount: 6,
          children: List.generate(100, (index) {
            return Center(
              child: Text(
                'Item $index',
                style: Theme.of(context).textTheme.headlineSmall,
              ),
            );
          }),
        ),
      ),
    );
  }
}
