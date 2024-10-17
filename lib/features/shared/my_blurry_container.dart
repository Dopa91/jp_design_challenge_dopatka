import 'package:blurrycontainer/blurrycontainer.dart';
import 'package:flutter/material.dart';

class MyBlurryContainer extends StatelessWidget {
  const MyBlurryContainer({
    super.key,
    required this.child,
    this.width = 0,
    this.height = 0,
  });

  final Widget child;
  final double width;
  final double height;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        border: Border.all(color: const Color.fromARGB(131, 255, 255, 255)),
        borderRadius: BorderRadius.circular(32),
      ),
      child: BlurryContainer(
        elevation: 8,
        blur: 16,
        height: height,
        width: width,
        color: Colors.transparent,
        borderRadius: const BorderRadius.all(
          Radius.circular(32),
        ),
        child: child,
      ),
    );
  }
}
