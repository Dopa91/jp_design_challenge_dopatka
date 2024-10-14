import 'package:flutter/material.dart';
import 'package:jp_design_challenge_dopatka/features/detail_bottom_sheet/widgets/bottom_sheet_detail_cont.dart';
import 'package:jp_design_challenge_dopatka/features/shared/my_button.dart';

class BottomSheetStackWidget extends StatelessWidget {
  const BottomSheetStackWidget({
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
    return Stack(
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
          child: BottomSheetDetailCont(title: title, price: price),
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
              fontSize: 18),
        ),
        const Positioned(
          left: 0,
          bottom: 128,
          child: Row(
            children: [Text("Placeholder")],
          ),
        ),
        const Positioned(
          right: 0,
          bottom: 128,
          child: Row(
            children: [
              IconButton(
                onPressed: null,
                icon: Icon(
                  Icons.add_circle_outline,
                  color: Colors.white,
                  size: 28,
                ),
              ),
              SizedBox(
                width: 8,
              ),
              Text(
                "1",
                style: TextStyle(
                    fontSize: 21,
                    fontWeight: FontWeight.w700,
                    color: Colors.white),
              ),
              SizedBox(
                width: 8,
              ),
              IconButton(
                onPressed: null,
                icon: Icon(
                  Icons.remove_circle_outline,
                  color: Colors.white,
                  size: 28,
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
