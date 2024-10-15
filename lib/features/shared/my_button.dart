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
    return Material(
      child: GestureDetector(
        onTap: nextSite,
        child: Container(
          width: buttonWidth,
          height: buttonHeight,
          decoration: BoxDecoration(
            border: Border.all(
              color: const Color.fromARGB(255, 238, 178, 232),
            ),
            boxShadow: const [
              BoxShadow(
                color: Color.fromARGB(255, 221, 133, 198),
                spreadRadius: 4,
                blurRadius: 4,
              ),
              BoxShadow(
                color: Color.fromARGB(255, 235, 105, 245),
                spreadRadius: 4,
                blurRadius: 2,
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
      ),
    );
  }
}
