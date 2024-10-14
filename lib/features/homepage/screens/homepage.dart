import 'package:flutter/material.dart';
import 'package:jp_design_challenge_dopatka/features/homepage/widgets/horizont_menu_bar.dart';
import 'package:jp_design_challenge_dopatka/features/shared/my_button.dart';

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
                Flexible(
                  fit: FlexFit.loose,
                  child: Stack(
                    alignment: Alignment.center,
                    fit: StackFit.expand,
                    children: [
                      Positioned(
                        top: 0,
                        child: Transform.scale(
                            scale: 1.1,
                            child: Image.asset("assets/images/Top Card.png")),
                      ),
                      const Padding(
                        padding: EdgeInsets.only(left: 32, top: 12),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "Angi's Yummy Burger",
                              style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 18,
                                  fontWeight: FontWeight.w700),
                            ),
                            SizedBox(
                              height: 8,
                            ),
                            Text(
                              "Delish vegan burger",
                              style: TextStyle(color: Colors.white),
                            ),
                            Text(
                              "thats tastes like heaven",
                              style: TextStyle(color: Colors.white),
                            ),
                            SizedBox(
                              height: 16,
                            ),
                            Text(
                              "¥ 13.99",
                              style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 18,
                                  fontWeight: FontWeight.w700),
                            ),
                            SizedBox(
                              height: 32,
                            ),
                            MyButton(
                              newText: "Add to order",
                              nextSite: null,
                              icon: null,
                              buttonWidth: 112,
                              fontSize: 12,
                            ),
                          ],
                        ),
                      ),
                      Positioned(
                        right: 72,
                        top: 16,
                        child: Image.asset("assets/images/star.png"),
                      ),
                      const Positioned(
                        right: 44,
                        top: 14,
                        child: Text(
                          "4.8",
                          style: TextStyle(color: Colors.white),
                        ),
                      ),
                      Positioned(
                        height: 232,
                        left: 164,
                        top: 32,
                        child: Image.asset("assets/images/Burger_3D.png"),
                      ),
                      const Positioned(
                        top: 310,
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
                ),
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

class RecommendCard extends StatelessWidget {
  const RecommendCard({
    super.key,
    required this.imagePath,
    required this.title,
    required this.subtitle,
    required this.price,
    required this.iconValue,
  });

  final String imagePath;
  final String title;
  final String subtitle;
  final String price;
  final String iconValue;

  @override
  Widget build(BuildContext context) {
    return Card(
        color: const Color.fromARGB(255, 116, 98, 162),
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Image.asset(
                imagePath,
                height: 182,
                width: 200,
              ),
              Text(
                title,
                style: const TextStyle(
                    color: Colors.white, fontWeight: FontWeight.w700),
              ),
              Text(
                subtitle,
                style: const TextStyle(
                    color: Colors.white, fontWeight: FontWeight.w300),
              ),
              const SizedBox(
                height: 8,
              ),
              Row(
                children: [
                  Text(
                    price,
                    style: const TextStyle(
                        color: Colors.white, fontWeight: FontWeight.w600),
                  ),
                  const SizedBox(
                    width: 100,
                  ),
                  const Icon(
                    Icons.favorite_border,
                    size: 16,
                    color: Colors.white,
                  ),
                  const SizedBox(
                    width: 8,
                  ),
                  Text(
                    iconValue,
                    style: const TextStyle(
                      color: Colors.white,
                    ),
                  ),
                ],
              )
            ],
          ),
        ));
  }
}
