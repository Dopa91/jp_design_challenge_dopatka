import 'package:flutter/material.dart';

class IngredientsIcon extends StatelessWidget {
  const IngredientsIcon({
    super.key,
    required this.icon,
  });

  final IconData icon;
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Icon(
          icon,
          color: Colors.white,
          size: 24,
        ),
      ],
    );
  }
}
