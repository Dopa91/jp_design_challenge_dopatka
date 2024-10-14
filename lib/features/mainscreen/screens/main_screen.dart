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
        alignment: Alignment.center,
        children: [
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Stack(
                alignment: Alignment.center,
                children: [
                  Image.asset("assets/images/chick cupcakes_3D.png"),
                  Positioned(
                    top: 320,
                    child: Image.asset("assets/images/T2.png"),
                  ),
                ],
              ),
              Container(
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
                      padding: const EdgeInsets.only(
                          left: 80, right: 80, bottom: 16, top: 16),
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
                          icon: null),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
