import 'package:flutter/material.dart';
import 'package:runway_app/Features/category_view/data/models/men_model.dart';
import 'package:runway_app/Features/details_view/presentation/views/widgets/custom_drag_bottom_sheet.dart';

class MobileDetailsBody extends StatelessWidget {
  const MobileDetailsBody({super.key, required this.menModel});
  final MenModel menModel;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: Stack(
        fit: StackFit.expand,
        children: [
          Hero(
            tag: menModel.image,
            child: Padding(
              padding: const EdgeInsets.symmetric(vertical: 14),
              child: Image.asset(
                fit: BoxFit.fitHeight,
                height: 250,
                menModel.image,
              ),
            ),
          ),
          CustomDragBottomSheet(menModel: menModel),
        ],
      ),
    );
  }
}
