import 'package:flutter/material.dart';
import 'package:jp_design_challenge_dopatka/features/detail_bottom_sheet/screens/bottom_sheet_page.dart';
import 'package:jp_design_challenge_dopatka/features/shared/my_button.dart';

class TopCardView extends StatelessWidget {
  const TopCardView({
    super.key,
    required this.imagePath,
    required this.title,
    required this.price,
    required this.subTitle,
    required this.subTitleTwo,
  });

  final String imagePath;
  final String title;
  final String subTitle;
  final String subTitleTwo;
  final String price;

  @override
  Widget build(BuildContext context) {
    return Flexible(
      fit: FlexFit.loose,
      child: Stack(
        alignment: Alignment.center,
        fit: StackFit.expand,
        children: [
          Positioned(
            top: 48,
            child: Transform.scale(
              scale: 1.125,
              child: Image.asset(
                "assets/images/Top Card.png",
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 32, top: 54),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  title,
                  style: const TextStyle(
                      color: Colors.white,
                      fontSize: 18,
                      fontWeight: FontWeight.w700),
                ),
                const SizedBox(
                  height: 8,
                ),
                Text(
                  subTitle,
                  style: const TextStyle(
                      color: Colors.white,
                      fontSize: 13,
                      fontWeight: FontWeight.w300),
                ),
                Text(
                  subTitleTwo,
                  style: const TextStyle(
                      color: Colors.white,
                      fontSize: 13,
                      fontWeight: FontWeight.w300),
                ),
                const SizedBox(
                  height: 16,
                ),
                Text(
                  price,
                  style: const TextStyle(
                      color: Colors.white,
                      fontSize: 18,
                      fontWeight: FontWeight.w700),
                ),
                const SizedBox(
                  height: 52,
                ),
                MyButton(
                  newText: "Add to order",
                  nextSite: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => BottomSheetPage(
                            imagePath: imagePath, title: title, price: price),
                      ),
                    );
                  },
                  icon: null,
                  buttonWidth: 113,
                  fontSize: 14,
                  buttonHeight: 48,
                  gradientOne: const Color.fromARGB(255, 199, 91, 236),
                  gradientTwo: const Color.fromARGB(255, 177, 107, 238),
                  gradientthree: const Color.fromARGB(255, 149, 115, 227),
                  shadowOne: const Color.fromARGB(255, 60, 32, 58),
                  shadowTwo: const Color.fromARGB(255, 145, 101, 153),
                ),
              ],
            ),
          ),
          Positioned(
            right: 72,
            top: 58,
            child: Image.asset("assets/images/star.png"),
          ),
          const Positioned(
            right: 44,
            top: 56,
            child: Text(
              "4.8",
              style: TextStyle(color: Colors.white),
            ),
          ),
          Positioned(
            height: 250,
            left: 164,
            top: 72,
            child: Image.asset(
              imagePath,
            ),
          ),
          const Positioned(
            top: 350,
            left: 8,
            child: Text(
              "We Recommend",
              style: TextStyle(
                  color: Colors.white,
                  fontSize: 18,
                  fontWeight: FontWeight.w700),
            ),
          ),
        ],
      ),
    );
  }
}
