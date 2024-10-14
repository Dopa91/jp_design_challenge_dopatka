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
        ],
      ),
    );
  }
}
