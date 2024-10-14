import 'package:flutter/material.dart';
import 'package:jp_design_challenge_dopatka/features/homepage/widgets/horizont_card_view.dart';
import 'package:jp_design_challenge_dopatka/features/homepage/widgets/horizont_menu_bar.dart';
import 'package:jp_design_challenge_dopatka/features/homepage/widgets/recommend_card.dart';
import 'package:jp_design_challenge_dopatka/features/homepage/widgets/top_card_view.dart';

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
        child: const SafeArea(
          child: Padding(
            padding: EdgeInsets.all(16.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Choose Your Favorite",
                  style: TextStyle(
                      fontSize: 26,
                      color: Colors.white,
                      fontWeight: FontWeight.w700),
                ),
                Text(
                  "Snack",
                  style: TextStyle(
                      fontSize: 26,
                      color: Colors.white,
                      fontWeight: FontWeight.w700),
                ),
                HorizontMenuBar(),
                TopCardView(),
                HorizontCardView(),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
