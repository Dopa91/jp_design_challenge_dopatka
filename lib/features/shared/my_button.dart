import 'package:flutter/material.dart';

class MyButton extends StatelessWidget {
  const MyButton({
    super.key,
    required this.newText,
    required this.nextSite,
    required this.icon,
    required this.buttonWidth,
    required this.fontSize,
    required this.buttonHeight,
  });

  final IconData? icon;
  final double buttonWidth;
  final double? buttonHeight;
  final double fontSize;

  final String newText;
  final void Function()? nextSite;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: nextSite,
      child: Container(
        width: buttonWidth,
        height: buttonHeight,
        padding: const EdgeInsets.all(16),
        decoration: BoxDecoration(
          border: Border.all(
            color: const Color.fromARGB(255, 238, 178, 232),
          ),
          boxShadow: const [
            BoxShadow(
              color: Color.fromARGB(255, 221, 133, 198),
              spreadRadius: 3,
              blurRadius: 5,
            ),
            BoxShadow(
              color: Color.fromARGB(255, 190, 41, 200),
              spreadRadius: 1,
              blurRadius: 3,
            )
          ],
          gradient: const LinearGradient(
            colors: [
              Color.fromARGB(255, 218, 85, 187),
              Color.fromARGB(255, 226, 131, 218),
              Color.fromARGB(255, 243, 171, 230),
            ],
          ),
          color: const Color.fromARGB(255, 218, 85, 187),
          borderRadius: BorderRadius.circular(12),
        ),
        child: Row(
          children: [
            const Expanded(
              child: SizedBox(),
            ),
            Text(
              newText,
              style: TextStyle(
                  fontSize: fontSize,
                  fontWeight: FontWeight.bold,
                  color: Colors.white),
            ),
            const Expanded(child: SizedBox()),
            icon == null
                ? const SizedBox()
                : Icon(
                    icon,
                    color: Colors.white,
                  )
          ],
        ),
      ),
    );
  }
}
