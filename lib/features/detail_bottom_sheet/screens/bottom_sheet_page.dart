import 'package:flutter/material.dart';
import 'package:jp_design_challenge_dopatka/features/detail_bottom_sheet/widgets/bottom_sheet_stack_widget.dart';

class BottomSheetPage extends StatelessWidget {
  const BottomSheetPage({
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
    return Container(
      height: 700,
      padding: const EdgeInsets.all(16),
      decoration: BoxDecoration(
        color: const Color.fromARGB(255, 61, 57, 57),
        borderRadius: BorderRadius.circular(16),
      ),
      child: BottomSheetStackWidget(
          imagePath: imagePath, title: title, price: price),
    );
  }
}
