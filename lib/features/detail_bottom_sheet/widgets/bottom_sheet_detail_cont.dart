import 'package:flutter/material.dart';
import 'package:jp_design_challenge_dopatka/features/detail_bottom_sheet/widgets/ingredients_icon.dart';
import 'package:jp_design_challenge_dopatka/features/shared/my_blurry_container.dart';

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
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: MyBlurryContainer(
        height: 342,
        child: Column(
          children: [
            const Padding(
              padding: EdgeInsets.only(right: 16, top: 8),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Icon(
                    Icons.favorite_border,
                    color: Colors.white,
                    size: 18,
                  ),
                  SizedBox(
                    width: 4,
                  ),
                  Text(
                    "200",
                    style: TextStyle(color: Colors.white),
                  ),
                ],
              ),
            ),
            Text(
              title,
              style: const TextStyle(
                  fontSize: 26,
                  fontWeight: FontWeight.bold,
                  color: Colors.white),
            ),
            const Padding(
              padding: EdgeInsets.all(
                8.0,
              ),
              child: Text(
                textAlign: TextAlign.center,
                "Lorem ipsum dolor sit amet consectetur. Non feugiat imperdiet a vel sit at amet. Mi accumsan feugiat magna aliquam feugiat ac et. Pulvinar hendrerit id arcu at sed etiam semper mi hendrerit. Id aliquet quis quam.",
                style: TextStyle(fontSize: 14, color: Colors.white),
              ),
            ),
            const SizedBox(
              height: 16,
            ),
            Text(
              price,
              style: const TextStyle(
                  fontSize: 20,
                  color: Colors.white,
                  fontWeight: FontWeight.w800),
            ),
            const SizedBox(
              height: 8,
            ),
            const Padding(
              padding: EdgeInsets.all(
                8.0,
              ),
              child: Divider(),
            ),
            const Padding(
              padding: EdgeInsets.only(
                right: 8,
                left: 8,
              ),
              child: Row(
                children: [
                  Text(
                    "Ingredients",
                    style: TextStyle(color: Colors.white, fontSize: 12),
                  ),
                  Expanded(flex: 7, child: SizedBox()),
                  Text(
                    "Reviews",
                    style: TextStyle(color: Colors.white, fontSize: 12),
                  ),
                  Expanded(
                    flex: 4,
                    child: SizedBox(),
                  )
                ],
              ),
            ),
            const Padding(
              padding: EdgeInsets.all(
                8.0,
              ),
              child: Row(
                children: [
                  BottomSheetIconRow(
                    icon: Icons.macro_off_outlined,
                    iconTwo: Icons.macro_off_rounded,
                    iconThree: Icons.catching_pokemon_outlined,
                    iconFour: Icons.whatshot_outlined,
                  ),
                  Expanded(
                    child: SizedBox(),
                  ),
                  BottomSheetIconRow(
                    icon: Icons.star,
                    iconTwo: Icons.star,
                    iconThree: Icons.star,
                    iconFour: Icons.star,
                    iconFive: Icons.star_border,
                  ),
                  SizedBox(
                    width: 8,
                  ),
                  Text(
                    "4.0",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 14,
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
