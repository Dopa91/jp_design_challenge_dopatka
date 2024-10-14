import 'package:flutter/material.dart';
import 'package:jp_design_challenge_dopatka/features/homepage/widgets/my_button_round.dart';

class Homepage extends StatelessWidget {
  const Homepage({super.key});

  @override
  Widget build(BuildContext context) {
    return Material(
      child: Container(
        decoration: const BoxDecoration(
          image: DecorationImage(
            fit: BoxFit.cover,
            image: AssetImage("assets/images/bg_mainscreen.png"),
          ),
        ),
        child: SafeArea(
          child: Padding(
            padding: const EdgeInsets.all(16.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Text(
                  "Choose Your Favorite",
                  style: TextStyle(
                      fontSize: 26,
                      color: Colors.white,
                      fontWeight: FontWeight.w700),
                ),
                const Text(
                  "Snack",
                  style: TextStyle(
                      fontSize: 26,
                      color: Colors.white,
                      fontWeight: FontWeight.w700),
                ),
                Expanded(
                  child: ListView(
                    scrollDirection: Axis.horizontal,
                    children: const [
                      Row(
                        children: [
                          MyButtonRound(
                            newText: "All categories",
                            nextSite: null,
                            iconFirst: Icons.fastfood_outlined,
                            icon: Icons.keyboard_arrow_down_outlined,
                            buttonWidth: 164,
                            fontSize: 12,
                          ),
                          MyButtonRound(
                            newText: "Salty",
                            nextSite: null,
                            buttonWidth: 84,
                            fontSize: 14,
                            icon: null,
                            iconFirst: null,
                          ),
                          MyButtonRound(
                            newText: "Sweet",
                            nextSite: null,
                            buttonWidth: 84,
                            fontSize: 14,
                            icon: null,
                            iconFirst: null,
                          ),
                          MyButtonRound(
                            newText: "Drinks",
                            nextSite: null,
                            buttonWidth: 84,
                            fontSize: 14,
                            icon: null,
                            iconFirst: null,
                          ),
                        ],
                      ),
                    ],
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
