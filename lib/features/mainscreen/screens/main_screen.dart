import 'package:flutter/material.dart';
import 'package:jp_design_challenge_dopatka/features/homepage/screens/homepage.dart';
import 'package:jp_design_challenge_dopatka/features/shared/my_button.dart';

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
          Positioned(
            bottom: 80,
            child: Container(
              height: 220,
              width: 380,
              decoration: const BoxDecoration(
                color: Colors.black,
                borderRadius: BorderRadius.all(
                  Radius.circular(32),
                ),
              ),
              child: Column(
                children: [
                  const Padding(
                    padding: EdgeInsets.only(top: 24, bottom: 12),
                    child: Text(
                      "Feeling Snackish Today?",
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 24,
                          fontWeight: FontWeight.w800),
                    ),
                  ),
                  const Text(
                    "Explore Angißs most popular snack selection",
                    style: TextStyle(color: Colors.white, fontSize: 14),
                  ),
                  const Text(
                    "and get instantly happy.",
                    style: TextStyle(color: Colors.white, fontSize: 14),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 24),
                    child: MyButton(
                      newText: "Order Now",
                      nextSite: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => const Homepage(),
                          ),
                        );
                      },
                      icon: null,
                      buttonWidth: 196,
                      fontSize: 14,
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
