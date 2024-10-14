import 'package:flutter/material.dart';
import 'package:jp_design_challenge_dopatka/features/homepage/widgets/my_button_round.dart';

class HorizontMenuBar extends StatelessWidget {
  const HorizontMenuBar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 64,
      child: ListView(
        scrollDirection: Axis.horizontal,
        children: const [
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
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
    );
  }
}
