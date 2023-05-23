import "package:flutter/material.dart";
import "package:tictactoe/app/widgets/custom_button.dart";
import "package:tictactoe/app/models/board_model.dart";

class Game extends StatelessWidget {
  const Game({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: OrientationBuilder(builder: (context, orientation) {
          Board.player1Turn = true;

          if (orientation == Orientation.portrait) {
            return Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                CustomButton(
                    text: "Exit to main menu",
                    onTap: () {
                      Board.clearCells();
                      Board.player1Turn = true;
                      Navigator.of(context).pop();
                    }),
                const SizedBox(height: 100),
                const Board(),
              ],
            );
          } else {
            return Row(
              children: [
                CustomButton(
                  text: "Exit to main menu",
                  onTap: () => Navigator.of(context).pop(),
                ),
                const Text(
                    "Couldn't figure out how to do this in landscape mode"),
                // ignore: todo
                // TODO: figure it out
              ],
            );
          }
        }),
      ),
    );
  }
}
