import "package:flutter/material.dart";
import "package:tictactoe/app/models/board_model.dart";

class WinScreen extends StatelessWidget {
  const WinScreen({
    super.key,
    required this.player1Won,
  });

  final bool player1Won;

  @override
  Widget build(BuildContext context) {
    Board.clearCells();

    return Center(
      child: Card(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text("Player ${player1Won ? "1" : "2"} won!"),
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                TextButton(
                  onPressed: () => Navigator.of(context).pop(),
                  child: const Text("Ok"),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
