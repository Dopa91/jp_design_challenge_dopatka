import 'package:flutter/material.dart';

class BottomSheetIconRow extends StatelessWidget {
  const BottomSheetIconRow({
    super.key,
    required this.icon,
    required this.iconTwo,
    required this.iconThree,
    required this.iconFour,
    this.iconFive,
  });

  final IconData icon;
  final IconData iconTwo;
  final IconData iconThree;
  final IconData iconFour;
  final IconData? iconFive;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Icon(
          icon,
          color: Colors.white,
          size: 21,
        ),
        Icon(
          iconTwo,
          color: Colors.white,
          size: 21,
        ),
        Icon(
          iconThree,
          color: Colors.white,
          size: 21,
        ),
        Icon(
          iconFour,
          color: Colors.white,
          size: 21,
        ),
        Icon(
          iconFive,
          color: Colors.white,
          size: 21,
        ),
      ],
    );
  }
}
