import 'package:flutter/material.dart';

class BoardTile extends StatelessWidget {
  final int x;
  final VoidCallback onTap;
  final double dim;
  final double padding;

  const BoardTile(
    this.x, {
    @required this.onTap,
    @required this.dim,
    @required this.padding,
  });

  @override
  Widget build(BuildContext context) {
    final double fontSize = 0.5 * dim;

    return GestureDetector(
      onTap: onTap,
      child: Padding(
        padding: EdgeInsets.all(padding),
        child: Container(
          height: dim,
          width: dim,
          decoration: BoxDecoration(
            color: x != null
                ? Theme.of(context).brightness == Brightness.light
                    ? Colors.yellow[300]
                    : Colors.red
                : Colors.transparent,
            borderRadius: BorderRadius.circular(dim / 8),
          ),
          child: Center(
            child: Text(
              x != null ? '$x' : '',
              textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: fontSize,
                fontWeight: FontWeight.w300,
              ),
            ),
          ),
        ),
      ),
    );
  }
}
