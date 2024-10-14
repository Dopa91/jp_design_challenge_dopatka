import 'package:flutter/material.dart';

class MyButtonRound extends StatelessWidget {
  const MyButtonRound({
    super.key,
    required this.newText,
    required this.nextSite,
    required this.icon,
    required this.buttonWidth,
    required this.fontSize,
    required this.iconFirst,
  });

  final IconData? icon;
  final IconData? iconFirst;
  final double buttonWidth;
  final double fontSize;

  final String newText;
  final void Function()? nextSite;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: nextSite,
      child: Padding(
        padding: const EdgeInsets.all(4.0),
        child: Container(
          width: buttonWidth,
          height: 50,
          padding: const EdgeInsets.all(16),
          decoration: BoxDecoration(
            border: Border.all(color: Colors.white),
            color: const Color.fromARGB(255, 218, 85, 187),
            borderRadius: BorderRadius.circular(32),
          ),
          child: Row(
            children: [
              const Expanded(
                child: SizedBox(),
              ),
              iconFirst == null
                  ? const SizedBox()
                  : Icon(
                      iconFirst,
                      color: Colors.white,
                      size: 16,
                    ),
              Text(
                newText,
                style: TextStyle(
                    fontSize: fontSize,
                    fontWeight: FontWeight.w500,
                    color: Colors.white),
              ),
              icon == null
                  ? const SizedBox()
                  : Icon(
                      icon,
                      color: Colors.white,
                    ),
              const Expanded(
                child: SizedBox(),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
