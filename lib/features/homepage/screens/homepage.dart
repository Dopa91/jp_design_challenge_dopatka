import 'package:flutter/material.dart';
import 'package:jp_design_challenge_dopatka/features/homepage/widgets/horizont_card_view.dart';
import 'package:jp_design_challenge_dopatka/features/homepage/widgets/horizont_menu_bar.dart';
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
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: EdgeInsets.only(left: 16, top: 16),
                child: Text(
                  "Choose Your Favorite",
                  style: TextStyle(
                      fontSize: 26,
                      color: Colors.white,
                      fontWeight: FontWeight.w800),
                ),
              ),
              Padding(
                padding: EdgeInsets.only(left: 16, bottom: 8),
                child: Text(
                  "Snack",
                  style: TextStyle(
                      fontSize: 26,
                      color: Colors.white,
                      fontWeight: FontWeight.w800),
                ),
              ),
              Padding(
                padding: EdgeInsets.only(left: 16),
                child: HorizontMenuBar(),
              ),
              TopCardView(),
              Padding(
                padding: EdgeInsets.only(left: 16),
                child: HorizontCardView(),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
