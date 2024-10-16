import 'package:flutter/material.dart';
import 'package:jp_design_challenge_dopatka/features/detail_bottom_sheet/widgets/bottom_sheet_detail_cont.dart';
import 'package:jp_design_challenge_dopatka/features/shared/my_button.dart';

class BottomSheetStackWidget extends StatefulWidget {
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
  BottomSheetStackWidgetState createState() => BottomSheetStackWidgetState();
}

class BottomSheetStackWidgetState extends State<BottomSheetStackWidget> {
  List<bool> selectedButton = [false, false, true];

  @override
  Widget build(BuildContext context) {
    return Stack(
      clipBehavior: Clip.none,
      children: [
        Positioned(
          left: 0,
          right: 0,
          top: -150,
          child: Transform.scale(
            scale: 1.125,
            child: Image.asset(
              widget.imagePath,
            ),
          ),
        ),
        Positioned(
          left: 0,
          right: 0,
          bottom: 196,
          child:
              BottomSheetDetailCont(title: widget.title, price: widget.price),
        ),
        Positioned(
          left: 364,
          right: 0,
          top: -18,
          child: IconButton(
            onPressed: () => Navigator.pop(context),
            icon: const Icon(
              Icons.cancel_outlined,
              size: 36,
              color: Colors.grey,
            ),
          ),
        ),
        Positioned(
          left: 0,
          right: 0,
          bottom: 32,
          child: MyButton(
            newText: "Add to order for${widget.price}",
            nextSite: () {
              Navigator.pop(context);
            },
            icon: null,
            buttonWidth: 350,
            fontSize: 18,
            buttonHeight: 55,
            gradientOne: const Color.fromARGB(255, 186, 97, 174),
            gradientTwo: const Color.fromARGB(255, 229, 145, 215),
            gradientthree: const Color.fromARGB(255, 198, 176, 130),
            shadowOne: const Color.fromARGB(255, 145, 129, 95),
            shadowTwo: const Color.fromARGB(255, 193, 114, 183),
          ),
        ),
        Positioned(
          left: 0,
          bottom: 128,
          child: Row(
            children: [
              ToggleButtons(
                highlightColor: Colors.grey[400],
                color: Colors.grey[600],
                selectedColor: Colors.white,
                borderRadius: BorderRadius.circular(16),
                isSelected: selectedButton,
                onPressed: (int index) {
                  setState(
                    () {
                      for (int i = 0; i < selectedButton.length; i++) {
                        selectedButton[i] = i == index;
                      }
                    },
                  );
                },
                children: const [
                  Padding(
                    padding: EdgeInsets.all(8.0),
                    child: Text("Small"),
                  ),
                  Padding(
                    padding: EdgeInsets.all(8.0),
                    child: Text("Medium"),
                  ),
                  Padding(
                    padding: EdgeInsets.all(8.0),
                    child: Text("Large"),
                  ),
                ],
              ),
            ],
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
