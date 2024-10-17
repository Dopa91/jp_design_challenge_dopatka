import 'package:flutter/material.dart';
import 'package:jp_design_challenge_dopatka/features/homepage/screens/homepage.dart';
import 'package:jp_design_challenge_dopatka/features/shared/my_blurry_container.dart';
import 'package:jp_design_challenge_dopatka/features/shared/my_button.dart';

class CallToActionContainer extends StatelessWidget {
  const CallToActionContainer({
    super.key,
    required this.imagePath,
    required this.title,
    required this.price,
  });

  final String imagePath;
  final String title;
  final String price;

  @override
  Widget build(BuildContext context) {
    return MyBlurryContainer(
      height: 220,
      width: 380,
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
            "Explore Angi's most popular snack selection",
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
                    builder: (context) => Homepage(
                        imagePath: imagePath, title: title, price: price),
                  ),
                );
              },
              icon: null,
              buttonWidth: 220,
              fontSize: 20,
              buttonHeight: 50,
              gradientOne: const Color.fromARGB(255, 196, 71, 150),
              gradientTwo: const Color.fromARGB(255, 239, 120, 233),
              gradientthree: const Color.fromARGB(255, 244, 207, 154),
              shadowOne: const Color.fromARGB(255, 137, 116, 78),
              shadowTwo: const Color.fromARGB(255, 222, 149, 196),
            ),
          ),
        ],
      ),
    );
  }
}
