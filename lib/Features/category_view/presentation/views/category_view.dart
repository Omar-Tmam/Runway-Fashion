import 'package:flutter/widgets.dart';
import 'package:runway_app/Core/utils/custom_adaptive_layout.dart';
import 'package:runway_app/Features/category_view/presentation/views/mobile_category.dart';

class CategoryView extends StatelessWidget {
  const CategoryView({super.key});

  @override
  Widget build(BuildContext context) {
    return CustomAdaptiveLayout(
      mobileLayout: (context) => MobileCategory(),
      tabletLayout: (context) => SizedBox(),
    );
  }
}