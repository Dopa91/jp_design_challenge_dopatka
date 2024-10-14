import 'package:blurrycontainer/blurrycontainer.dart';
import 'package:flutter/material.dart';
import 'package:jp_design_challenge_dopatka/features/detail_bottom_sheet/widgets/ingredients_icon.dart';
import 'package:jp_design_challenge_dopatka/features/shared/my_button.dart';

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
    return GestureDetector(
      onTap: () {
        showModalBottomSheet(
          context: context,
          builder: (BuildContext context) {
            return Container(
              height: 700,
              padding: const EdgeInsets.all(16),
              decoration: BoxDecoration(
                color: const Color.fromARGB(255, 61, 57, 57),
                borderRadius: BorderRadius.circular(16),
              ),
              child: Stack(
                clipBehavior: Clip.none,
                children: [
                  Positioned(
                    left: 0,
                    right: 0,
                    top: -350,
                    child: Image.asset(
                      imagePath,
                    ),
                  ),
                  Positioned(
                    left: 0,
                    right: 0,
                    bottom: 196,
                    child: Container(
                      height: 300,
                      decoration: BoxDecoration(
                        border: Border.all(color: Colors.white),
                        borderRadius: BorderRadius.circular(32),
                      ),
                      child: BlurryContainer(
                        elevation: 4,
                        borderRadius: BorderRadius.circular(32),
                        child: Column(
                          children: [
                            Text(
                              title,
                              style: const TextStyle(
                                  fontSize: 26,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.white),
                            ),
                            const SizedBox(height: 8),
                            const Text(
                              "Lorem ipsum dolor sit amet consectetur. Non feugiat imperdiet a vel sit at amet. Mi accumsan feugiat magna aliquam feugiat ac et. Pulvinar hendrerit id arcu at sed etiam semper mi hendrerit. Id aliquet quis quam.",
                              style:
                                  TextStyle(fontSize: 14, color: Colors.white),
                            ),
                            const SizedBox(height: 16),
                            Text(
                              "Price: $price",
                              style: const TextStyle(
                                  fontSize: 18,
                                  color: Colors.white,
                                  fontWeight: FontWeight.w600),
                            ),
                            const SizedBox(
                              height: 16,
                            ),
                            const Divider(),
                            const Row(
                              children: [
                                Text(
                                  "ingredients",
                                  style: TextStyle(
                                      color: Colors.white, fontSize: 12),
                                ),
                                Expanded(child: SizedBox()),
                                Text(
                                  "Reviews",
                                  style: TextStyle(
                                      color: Colors.white, fontSize: 12),
                                )
                              ],
                            ),
                            const IngredientsIcon(
                              icon: Icons.info_outline,
                            )
                          ],
                        ),
                      ),
                    ),
                  ),
                  Positioned(
                    left: 0,
                    right: 0,
                    bottom: 32,
                    child: MyButton(
                        newText: "Add to order for ¥ 8.99",
                        nextSite: () {
                          Navigator.pop(context);
                        },
                        icon: null,
                        buttonWidth: 350,
                        fontSize: 16),
                  ),
                ],
              ),
            );
          },
        );
      },
      child: Card(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(32),
        ),
        color: const Color.fromARGB(255, 116, 98, 162),
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Align(
                alignment: Alignment.center,
                child: Image.asset(
                  imagePath,
                  height: 164,
                  width: 164,
                ),
              ),
              const SizedBox(height: 8),
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
              const SizedBox(height: 8),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    price,
                    style: const TextStyle(
                        color: Colors.white, fontWeight: FontWeight.w600),
                  ),
                  const SizedBox(
                    width: 84,
                  ),
                  Row(
                    children: [
                      const Icon(
                        Icons.favorite_border,
                        size: 16,
                        color: Colors.white,
                      ),
                      const SizedBox(width: 4),
                      Text(
                        iconValue,
                        style: const TextStyle(
                          color: Colors.white,
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
