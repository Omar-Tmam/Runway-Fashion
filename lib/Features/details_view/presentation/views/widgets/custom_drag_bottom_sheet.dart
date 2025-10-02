import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:runway_app/Features/category_view/data/models/men_model.dart';
import 'package:runway_app/Features/details_view/presentation/views/widgets/add_to_cart_button.dart';
import 'package:runway_app/Features/details_view/presentation/views/widgets/color_size_section.dart';
import 'package:runway_app/Features/details_view/presentation/views/widgets/expandable_sections.dart';
import 'package:runway_app/Features/details_view/presentation/views/widgets/free_delivery_return_section.dart';
import 'package:runway_app/Features/details_view/presentation/views/widgets/name_price_fav_section.dart';

class CustomDragBottomSheet extends StatefulWidget {
  const CustomDragBottomSheet({super.key, required this.menModel});

  final MenModel menModel;

  @override
  State<CustomDragBottomSheet> createState() => _CustomDragBottomSheetState();
}

class _CustomDragBottomSheetState extends State<CustomDragBottomSheet> {
  final DraggableScrollableController _dragController = DraggableScrollableController();
  late double minSize;
  @override
  void initState() {
    super.initState();
    minSize = 0;
    WidgetsBinding.instance.addPostFrameCallback((_) {
      Future.delayed(const Duration(milliseconds: 300), () {
        _dragController.animateTo(
          0.5,
          duration: const Duration(milliseconds: 500),
          curve: Curves.easeInOut,
        );
        setState(() {
          minSize = 0.15;
        });
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    return DraggableScrollableSheet(
      controller: _dragController,
      minChildSize: minSize,
      initialChildSize: minSize,
      maxChildSize: 0.9,
      snapAnimationDuration: const Duration(milliseconds: 300),
      builder: (context, scrollController) {
        return Container(
          decoration: BoxDecoration(
            color: Theme.of(context).brightness == Brightness.dark
                ? Colors.black54
                : Colors.white54,
            borderRadius: BorderRadius.vertical(top: Radius.circular(24)),
            boxShadow: [BoxShadow(color: Colors.black26, blurRadius: 12, offset: Offset(0, -4))],
          ),
          child: SingleChildScrollView(
            controller: scrollController,
            child: Padding(
              padding: const EdgeInsets.all(20.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Center(
                    child: Container(
                      height: 5,
                      width: 50,
                      margin: const EdgeInsets.only(bottom: 20),
                      decoration: BoxDecoration(
                        color: Colors.grey[400],
                        borderRadius: BorderRadius.circular(10),
                      ),
                    ),
                  ),
                  NamePriceFavSection(menModel: widget.menModel),
                  const Gap(20),
                  const ColorSizeSection(),
                  const Gap(20),
                  const AddToCartButton(),
                  const Gap(20),
                  const FreedeliveryReturn(),
                  const Divider(height: 30),
                  const ExpandableSections(),
                ],
              ),
            ),
          ),
        );
      },
    );
  }
}
