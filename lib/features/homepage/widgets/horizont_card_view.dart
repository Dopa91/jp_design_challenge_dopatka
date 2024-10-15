import 'package:flutter/material.dart';
import 'package:jp_design_challenge_dopatka/features/homepage/widgets/recommend_card.dart';

class HorizontCardView extends StatelessWidget {
  const HorizontCardView({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 280,
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
          RecommendCard(
            imagePath: "assets/images/chick cupcakes_3D.png",
            title: "Tweety's Cup",
            subtitle: 'Mango ice cream',
            price: '¥ 8.99',
            iconValue: '175',
          ),
          RecommendCard(
            imagePath: "assets/images/Burger_3D.png",
            title: "Batch'7 BigBurger",
            subtitle: 'Delish beef burger',
            price: '¥ 13.99',
            iconValue: '300',
          ),
          RecommendCard(
            imagePath: "assets/images/ice cream stick_3D.png",
            title: "Happy's IceStick",
            subtitle: 'Vanilla ice with Choc',
            price: '¥ 4.99',
            iconValue: '75',
          ),
          RecommendCard(
            imagePath: "assets/images/Icecream_3D.png",
            title: "Yoguhrt Cherry Waffle",
            subtitle: "Yoguhrt ice with cerry's",
            price: '¥ 7.99',
            iconValue: '100',
          ),
        ],
      ),
    );
  }
}
