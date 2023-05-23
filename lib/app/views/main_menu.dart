import "package:flutter/material.dart";
import "package:tictactoe/app/views/game.dart";
import "package:tictactoe/app/widgets/custom_button.dart";

class MainMenu extends StatelessWidget {
  const MainMenu({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            const Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SizedBox(height: 75),
                Text(
                  "Tic tac toe",
                  style: TextStyle(
                    fontSize: 40,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ],
            ),
            Expanded(
              child: Center(
                child: CustomButton(
                  onTap: () {
                    Navigator.of(context).push(
                        MaterialPageRoute(builder: (context) => const Game()));
                  },
                  text: "Play",
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
