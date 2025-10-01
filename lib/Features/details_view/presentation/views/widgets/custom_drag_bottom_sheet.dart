import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:runway_app/Features/category_view/data/models/men_model.dart';
import 'package:runway_app/Features/details_view/presentation/views/widgets/add_to_cart_button.dart';
import 'package:runway_app/Features/details_view/presentation/views/widgets/color_size_section.dart';
import 'package:runway_app/Features/details_view/presentation/views/widgets/expandable_sections.dart';
import 'package:runway_app/Features/details_view/presentation/views/widgets/free_delivery_return_section.dart';
import 'package:runway_app/Features/details_view/presentation/views/widgets/name_price_fav_section.dart';

class CustomDragBottomSheet extends StatelessWidget {
  const CustomDragBottomSheet({
    super.key,
    required this.menModel,
  });

  final MenModel menModel;

  @override
  Widget build(BuildContext context) {
    return DraggableScrollableSheet(
      initialChildSize: 0.35,
      maxChildSize: 0.9,
      builder: (context, scrollController) {
        return Container(
          decoration: const BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.vertical(top: Radius.circular(24)),
            boxShadow: [
              BoxShadow(
                color: Colors.black26,
                blurRadius: 12,
                offset: Offset(0, -4),
              ),
            ],
          ),
          child: SingleChildScrollView(
            controller: scrollController,
            child: Padding(
              padding: const EdgeInsets.all(20.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  /// الخط اللي فوق
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

                  /// الاسم + السعر + المفضلة
                  NamePriceFavSection(menModel: menModel),

                  Gap(20),

                  /// Select color & size
                  ColorSizeSection(),

                  Gap(20),

                  /// زرار Add to Bag
                  AddToCartButton(),

                  Gap(20),

                  /// Free delivery & Free return

                  FreedeliveryReturn(),

                  const Divider(height: 30),
                  ExpandableSections(),
                ],
              ),
            ),
          ),
        );
      },
    );
  }
}
