import 'package:flutter/material.dart';
import 'package:runway_app/Core/utils/assets.dart';
import 'package:runway_app/Features/category_view/data/models/men_model.dart';
import 'package:runway_app/Features/category_view/presentation/views/widgets/category_item.dart';

class CategoriesGridView extends StatelessWidget {
  const CategoriesGridView({super.key});
  static final List<MenModel> models = [
    MenModel(
        image: Assets.imagesCategory1,
        price: '30\$',
        icon: Assets.imagesHeart,
        name: 'Gray coat and white T-shirt'),
    MenModel(
        image: Assets.imagesCategory2,
        price: '35\$',
        icon: Assets.imagesHeart,
        name: 'Lightweight Men\'s Puffer Jacket'),
    MenModel(
        image: Assets.imagesCategory3,
        price: '25\$',
        icon: Assets.imagesHeart,
        name: 'Top man white'),
    MenModel(
        image: Assets.imagesCategory4,
        price: '20\$',
        icon: Assets.imagesHeart,
        name: 'Classic Tailored Fit Men\'s Dress Shirt'),
    MenModel(
        image: Assets.imagesCategory5,
        price: '30 \$',
        icon: Assets.imagesHeart,
        name: 'Deep gray essential regular'),
    MenModel(
        image: Assets.imagesCategory6,
        price: '40\$',
        icon: Assets.imagesHeart,
        name: 'Top man black with Trouser'),
  ];

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: GridView.builder(
        itemCount: models.length,
        gridDelegate: SliverGridDelegateWithMaxCrossAxisExtent(
          mainAxisExtent: 300,
          crossAxisSpacing: 14,
          maxCrossAxisExtent: 300,
        ),
        itemBuilder: (context, index) {
          return CategoryItem(
            image: models[index].image,
            name: models[index].name,
            price: models[index].price,
            icon: models[index].icon,
          );
        },
      ),
    );
  }
}
