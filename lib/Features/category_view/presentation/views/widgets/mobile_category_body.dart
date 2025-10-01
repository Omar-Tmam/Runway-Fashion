import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:runway_app/Features/category_view/presentation/views/widgets/categories_grid_view.dart';
import 'package:runway_app/Features/category_view/presentation/views/widgets/sort_by_section.dart';

class MobileCategoryBody extends StatelessWidget {
  const MobileCategoryBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: Column(
        children: [SortBySection(), Gap(10), CategoriesGridView()],
      ),
    );
  }
}
