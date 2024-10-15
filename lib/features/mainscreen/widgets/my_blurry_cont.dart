import 'package:blurrycontainer/blurrycontainer.dart';
import 'package:flutter/material.dart';
import 'package:jp_design_challenge_dopatka/features/homepage/screens/homepage.dart';
import 'package:jp_design_challenge_dopatka/features/shared/my_button.dart';

class MyBlurryCont extends StatelessWidget {
  const MyBlurryCont({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        border: Border.all(color: const Color.fromARGB(131, 255, 255, 255)),
        borderRadius: BorderRadius.circular(32),
      ),
      child: BlurryContainer(
        elevation: 4,
        blur: 12,
        height: 220,
        width: 380,
        color: Colors.transparent,
        borderRadius: const BorderRadius.all(
          Radius.circular(32),
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
                      builder: (context) => const Homepage(),
                    ),
                  );
                },
                icon: null,
                buttonWidth: 212,
                fontSize: 16,
                buttonHeight: 55,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
