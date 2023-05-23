import "package:flutter/material.dart";
import "package:tictactoe/app/models/board_model.dart";
import "package:tictactoe/app/models/win_screen.dart";

enum CellState { X, O, empty }

// ignore: must_be_immutable
class Cell extends StatefulWidget {
  Cell({super.key});

  CellState symbol = CellState.empty;

  @override
  State<Cell> createState() => _CellState();
}

class _CellState extends State<Cell> {
  CellState state = CellState.empty;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
        boxShadow: [
          BoxShadow(
            color: Colors.white,
            blurRadius: 7,
            spreadRadius: 3,
          )
        ],
      ),
      child: TextButton(
        onPressed: () {
          if (state == CellState.empty) {
            if (Board.player1Turn) {
              changeSymbol(CellState.X);
            } else {
              changeSymbol(CellState.O);
            }

            Board.player1Turn = !Board.player1Turn;
            widget.symbol = state;
          }

          if (Board.checkWin() == 1) {
            Navigator.of(context).push(
              MaterialPageRoute(builder: (context) => const WinScreen(player1Won: true)));
          } else if (Board.checkWin() == 2) {
            Navigator.of(context).push(
              MaterialPageRoute(builder: (context) => const WinScreen(player1Won: false)));
          }
        },
        child: Text(
          state == CellState.X ? "X" : (state == CellState.O ? "O" : ""),
          style: const TextStyle(
            fontSize: 50,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
    );
  }

  void changeSymbol(CellState newState) => setState(() => state = newState);
}
