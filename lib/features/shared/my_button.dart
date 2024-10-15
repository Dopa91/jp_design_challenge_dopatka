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
    required this.gradientOne,
    required this.gradientTwo,
    required this.gradientthree,
    required this.shadowOne,
    required this.shadowTwo,
  });

  final IconData? icon;
  final double buttonWidth;
  final double? buttonHeight;
  final double fontSize;

  final Color gradientOne;
  final Color gradientTwo;
  final Color gradientthree;

  final Color shadowOne;
  final Color shadowTwo;

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
              color: const Color.fromARGB(255, 217, 144, 210),
            ),
            boxShadow: [
              BoxShadow(
                color: shadowOne,
                spreadRadius: 4,
                blurRadius: 4,
              ),
              BoxShadow(
                color: shadowTwo,
                spreadRadius: 4,
                blurRadius: 2,
              )
            ],
            gradient: LinearGradient(
              colors: [
                gradientOne,
                gradientTwo,
                gradientthree,
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
                    fontWeight: FontWeight.w700,
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
