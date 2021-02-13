import 'package:flutter/material.dart';
import 'package:flutter_drag_and_drop/provider/game_score.dart';
import 'package:flutter_drag_and_drop/widget/snack_message.dart';
import 'package:provider/provider.dart';

import 'number_box.dart';

class OddContainer extends StatelessWidget with SnackMessage {
  const OddContainer();

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 60,
      height: 60,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        color: Colors.blueAccent,
      ),
      //Dragable<int> hanya bisa di drag ke DragTarget dengan tipe yang sama DragTarget<int>
      child: DragTarget<int>(
        onAccept: (data) => _onAccept(context, data),
        onWillAccept: _willAccept,
        builder: (context, _, __) {
          return const Rectanglex(text: "Ganjil");
        },
      ),
    );
  }

  // Jika onWillAccept true maka _onAccept akan dijalankan.
  void _onAccept(BuildContext context, int data) {
    Provider.of<GameScore>(context, listen: false).addPoint(data);
    // context.read<GameScore>().addPoints(data); //persamaan dengan Provider.of
    showMessage(context, "Points: + $data");
  }

  // validasi di dragTarget
  bool _willAccept(int? data) => data != null && data % 2 != 0;
}
