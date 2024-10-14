import 'package:flutter/material.dart';
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
                const HorizontMenuBar(),
                const TopCardView(),
                SizedBox(
                  height: 300,
                  child: ListView(
                    scrollDirection: Axis.horizontal,
                    children: const [
                      RecommendCard(
                        imagePath: "assets/images/cat cupcakes_3D.png",
                        title: "Mogli's Cup",
                        subtitle: 'Strawberry ice cream',
                        price: '¥ 8.99',
                        iconValue: '200',
                      ),
                      RecommendCard(
                        imagePath: "assets/images/Ice.cream.png",
                        title: "Balu's Cup",
                        subtitle: 'Pistachio ice cream',
                        price: '¥ 8.99',
                        iconValue: '150',
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
