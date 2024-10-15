import 'package:flutter/material.dart';
import 'package:jp_design_challenge_dopatka/features/homepage/widgets/horizont_card_view.dart';
import 'package:jp_design_challenge_dopatka/features/homepage/widgets/horizont_menu_bar.dart';
import 'package:jp_design_challenge_dopatka/features/homepage/widgets/top_card_view.dart';

class Homepage extends StatelessWidget {
  const Homepage(
      {super.key,
      required this.imagePath,
      required this.title,
      required this.price});

  final String imagePath;
  final String title;
  final String price;

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
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Padding(
                padding: EdgeInsets.only(left: 16, top: 16),
                child: Text(
                  "Choose Your Favorite",
                  style: TextStyle(
                      fontSize: 26,
                      color: Colors.white,
                      fontWeight: FontWeight.w800),
                ),
              ),
              const Padding(
                padding: EdgeInsets.only(left: 16, bottom: 8),
                child: Text(
                  "Snack",
                  style: TextStyle(
                      fontSize: 26,
                      color: Colors.white,
                      fontWeight: FontWeight.w800),
                ),
              ),
              const Padding(
                padding: EdgeInsets.only(left: 16),
                child: HorizontMenuBar(),
              ),
              const TopCardView(
                imagePath: "assets/images/Burger_3D.png",
                title: "Angi's Yummy Burger",
                price: "¥ 13.99",
                subTitle: "Delish vegan Burger",
                subTitleTwo: "thats tastes like heaven",
              ),
              Padding(
                padding: const EdgeInsets.only(left: 16),
                child: HorizontCardView(
                    imagePath: imagePath, title: title, price: price),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
