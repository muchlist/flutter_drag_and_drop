import 'package:flutter/material.dart';
import 'package:flutter_drag_and_drop/provider/game_score.dart';
import 'package:flutter_drag_and_drop/page/drag_widget.dart';
import 'package:provider/provider.dart';

void main() => runApp(DemoApp());

class DemoApp extends StatelessWidget {
  const DemoApp();

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
          appBar: AppBar(
            title: const Text("Drag and Drop"),
          ),
          body: ChangeNotifierProvider<GameScore>(
            create: (_) => GameScore(),
            child: const Center(
              child: DragWidget(),
            ),
          )),
    );
  }
}
