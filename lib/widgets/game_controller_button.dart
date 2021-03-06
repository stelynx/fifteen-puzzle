import 'dart:math';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class GameControllerButton extends StatelessWidget {
  final IconData icon;
  final VoidCallback onTap;
  final bool enabled;

  const GameControllerButton({
    @required this.icon,
    @required this.onTap,
    this.enabled = true,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: enabled ? onTap : null,
      child: Icon(
        icon,
        size: min(40.0, MediaQuery.of(context).size.height / 25),
        color: enabled ? null : Colors.black26,
      ),
    );
  }
}
