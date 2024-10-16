import 'package:flutter/material.dart';
import 'package:jp_design_challenge_dopatka/features/detail_bottom_sheet/screens/bottom_sheet_page.dart';

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
          isScrollControlled: true,
          context: context,
          builder: (BuildContext context) {
            return BottomSheetPage(
                imagePath: imagePath, title: title, price: price);
          },
        );
      },
      child: Padding(
        padding: const EdgeInsets.only(right: 28),
        child: Container(
          width: 202,
          decoration: BoxDecoration(
            border: Border.all(color: const Color.fromARGB(255, 234, 185, 218)),
            borderRadius: BorderRadius.circular(32),
            gradient: const LinearGradient(
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter,
              colors: [
                Color.fromARGB(120, 79, 73, 201),
                Color.fromARGB(255, 123, 124, 199),
                Color.fromARGB(207, 140, 85, 192),
              ],
            ),
          ),
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
      ),
    );
  }
}
