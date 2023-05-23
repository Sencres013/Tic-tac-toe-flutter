import "package:flutter/material.dart";
import "package:tictactoe/app/models/cell_model.dart";

class Board extends StatelessWidget {
  const Board({
    super.key,
  });

  static bool player1Turn = true;
  static var cells = [for (int i = 0; i < 9; ++i) Cell()];

  @override
  Widget build(BuildContext context) {
    return GridView.count(
      crossAxisCount: 3,
      shrinkWrap: true,
      children: cells,
    );
  }

  /// 0 = no win, 1 = player 1 win, 2 = player 2 win
  static int checkWin() {
    // horizontal
    for (int i = 0; i < 3; ++i) {
      if (cells[i * 3].symbol == cells[i * 3 + 1].symbol && cells[i * 3 + 1].symbol == cells[i * 3 + 2].symbol
          && cells[i * 3].symbol != CellState.empty && cells[i * 3 + 1].symbol != CellState.empty
          && cells[i * 3 + 2].symbol != CellState.empty) {
        if (cells[i * 3].symbol == CellState.X) {
          return 1;
        } else {
          return 2;
        }
      }
    }

    // vertical
    for (int i = 0; i < 3; ++i) {
      if (cells[i].symbol == cells[i + 3].symbol && cells[i + 3].symbol == cells[i + 6].symbol
          && cells[i].symbol != CellState.empty && cells[i + 3].symbol != CellState.empty
          && cells[i + 6].symbol != CellState.empty) {
        if (cells[i].symbol == CellState.X) {
          return 1;
        } else {
          return 2;
        }
      }
    }

    // diagonal
    if ((cells[0].symbol == cells[4].symbol && cells[4].symbol == cells[8].symbol
          && cells[0].symbol != CellState.empty && cells[8].symbol != CellState.empty)
        || (cells[2].symbol == cells[4].symbol && cells[4].symbol == cells[6].symbol
          && cells[2].symbol != CellState.empty && cells[6].symbol != CellState.empty)
        && cells[4].symbol != CellState.empty) {
      if (cells[4].symbol == CellState.X) {
        return 1;
      } else {
        return 2;
      }
    }
    
    return 0;
  }

  static void clearCells() {
    cells = [for (int i = 0; i < 9; ++i) Cell()];
  }
}
