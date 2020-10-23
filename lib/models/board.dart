import 'dart:math';

import 'position.dart';

class Board {
  List<List<int>> board;
  Position emptySquare;

  Board() {
    _generateInitialBoard();
  }

  int get length => board.length;
  List<int> operator [](int idx) => board[idx];

  bool move(Position p) {
    if (!p.isNeighbourOf(emptySquare)) return false;

    board[emptySquare.x][emptySquare.y] = board[p.x][p.y];
    board[p.x][p.y] = null;
    emptySquare = p;
    return true;
  }

  void _generateInitialBoard() {
    final Random random = Random();

    final List<List<int>> tempBoard = <List<int>>[
      <int>[1, 2, 3, 4],
      <int>[5, 6, 7, 8],
      <int>[9, 10, 11, 12],
      <int>[13, 14, 15, null],
    ];
    Position tempEmptySquare = Position(3, 3);

    for (int i = 0; i < 1000; i++) {
      final List<Position> possibleMoves = <Position>[];
      // Can go left?
      if (tempEmptySquare.x > 0)
        possibleMoves.add(tempEmptySquare + Position(-1, 0));
      // Can go right?
      if (tempEmptySquare.x < 3)
        possibleMoves.add(tempEmptySquare + Position(1, 0));
      // Can go top?
      if (tempEmptySquare.y > 0)
        possibleMoves.add(tempEmptySquare + Position(0, -1));
      // Can go bottom?
      if (tempEmptySquare.y < 3)
        possibleMoves.add(tempEmptySquare + Position(0, 1));

      // Pick move.
      final Position nextMove =
          possibleMoves[random.nextInt(possibleMoves.length)];

      tempBoard[tempEmptySquare.x][tempEmptySquare.y] =
          tempBoard[nextMove.x][nextMove.y];
      tempEmptySquare = nextMove;
    }

    emptySquare = tempEmptySquare;
    // Insert empty square into the board because we are not doing it during iterations.
    tempBoard[emptySquare.x][emptySquare.y] = null;
    board = tempBoard;
  }

  @override
  String toString() {
    String str = '';
    board.forEach((List<int> row) {
      row.forEach((int x) {
        str += '$x ';
      });
      str += '\n';
    });
    return str;
  }
}
