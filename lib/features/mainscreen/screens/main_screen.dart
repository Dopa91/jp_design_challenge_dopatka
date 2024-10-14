import 'package:flutter/material.dart';
import 'package:jp_design_challenge_dopatka/features/mainscreen/widgets/my_blurry_cont.dart';

class MainScreen extends StatelessWidget {
  const MainScreen({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
        image: DecorationImage(
          fit: BoxFit.cover,
          image: AssetImage("assets/images/bg_startscreen.png"),
        ),
      ),
      child: Stack(
        fit: StackFit.expand,
        alignment: Alignment.center,
        children: [
          Positioned(
            right: -100,
            top: 172,
            child: Transform.scale(
              scale: 1.25,
              child: Image.asset(
                "assets/images/chick cupcakes_3D.png",
              ),
            ),
          ),
          Positioned(
            top: 516,
            child: Image.asset("assets/images/T2.png"),
          ),
          const Positioned(
            bottom: 80,
            child: MyBlurryCont(),
          ),
        ],
      ),
    );
  }
}
