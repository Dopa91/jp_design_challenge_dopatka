import 'package:flutter/material.dart';
import 'package:jp_design_challenge_dopatka/features/shared/my_button.dart';

class TopCardView extends StatelessWidget {
  const TopCardView({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Flexible(
      fit: FlexFit.loose,
      child: Stack(
        alignment: Alignment.center,
        fit: StackFit.expand,
        children: [
          Positioned(
            top: 0,
            child: Transform.scale(
                scale: 1.1, child: Image.asset("assets/images/Top Card.png")),
          ),
          const Padding(
            padding: EdgeInsets.only(left: 32, top: 12),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Angi's Yummy Burger",
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 18,
                      fontWeight: FontWeight.w700),
                ),
                SizedBox(
                  height: 8,
                ),
                Text(
                  "Delish vegan burger",
                  style: TextStyle(color: Colors.white),
                ),
                Text(
                  "thats tastes like heaven",
                  style: TextStyle(color: Colors.white),
                ),
                SizedBox(
                  height: 16,
                ),
                Text(
                  "¥ 13.99",
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 18,
                      fontWeight: FontWeight.w700),
                ),
                SizedBox(
                  height: 32,
                ),
                MyButton(
                  newText: "Add to order",
                  nextSite: null,
                  icon: null,
                  buttonWidth: 112,
                  fontSize: 12,
                ),
              ],
            ),
          ),
          Positioned(
            right: 72,
            top: 16,
            child: Image.asset("assets/images/star.png"),
          ),
          const Positioned(
            right: 44,
            top: 14,
            child: Text(
              "4.8",
              style: TextStyle(color: Colors.white),
            ),
          ),
          Positioned(
            height: 232,
            left: 164,
            top: 32,
            child: Image.asset("assets/images/Burger_3D.png"),
          ),
          const Positioned(
            top: 310,
            left: 8,
            child: Text(
              "We Recommend",
              style: TextStyle(
                  color: Colors.white,
                  fontSize: 18,
                  fontWeight: FontWeight.w700),
            ),
          ),
        ],
      ),
    );
  }
}