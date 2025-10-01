import 'package:flutter/material.dart';
import 'package:runway_app/Core/utils/assets.dart';
import 'package:runway_app/Features/category_view/data/models/category_model.dart';
import 'package:runway_app/Features/category_view/presentation/views/widgets/sort_by_section.dart';

class MobileCategoryBody extends StatelessWidget {
  const MobileCategoryBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: Column(
        children: [SortBySection(), CategoryItem()],
      ),
    );
  }
}

class CategoriesGridView extends StatelessWidget {
  const CategoriesGridView({super.key});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: GridView.builder(
        gridDelegate: SliverGridDelegateWithMaxCrossAxisExtent(maxCrossAxisExtent: 300),
        itemBuilder: (context, index) {
          return null;
        },
      ),
    );
  }
}

class CategoryItem extends StatelessWidget {
  const CategoryItem({super.key});
  static final List<MenModel> models = [];
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [Card(child: Image.asset(Assets.imagesCategory1))],
    );
  }
}
