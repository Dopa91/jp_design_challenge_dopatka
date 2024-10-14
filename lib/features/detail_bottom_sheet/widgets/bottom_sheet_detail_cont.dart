import 'package:blurrycontainer/blurrycontainer.dart';
import 'package:flutter/material.dart';
import 'package:jp_design_challenge_dopatka/features/detail_bottom_sheet/widgets/ingredients_icon.dart';

class BottomSheetDetailCont extends StatelessWidget {
  const BottomSheetDetailCont({
    super.key,
    required this.title,
    required this.price,
  });

  final String title;
  final String price;

  @override
  Widget build(BuildContext context) {
    return Container(
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
              style: TextStyle(fontSize: 14, color: Colors.white),
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
                  style: TextStyle(color: Colors.white, fontSize: 12),
                ),
                Expanded(child: SizedBox()),
                Text(
                  "Reviews",
                  style: TextStyle(color: Colors.white, fontSize: 12),
                )
              ],
            ),
            const Row(
              children: [
                BottomSheetIconRow(
                  icon: Icons.info_outline,
                  iconTwo: Icons.info_outline,
                  iconThree: Icons.info_outline,
                  iconFour: Icons.info_outline,
                ),
                Expanded(
                  child: SizedBox(),
                ),
                BottomSheetIconRow(
                  icon: Icons.star,
                  iconTwo: Icons.star,
                  iconThree: Icons.star,
                  iconFour: Icons.star_border,
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
