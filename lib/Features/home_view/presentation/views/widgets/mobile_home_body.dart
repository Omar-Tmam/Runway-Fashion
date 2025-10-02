import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:go_router/go_router.dart';
import 'package:runway_app/Core/utils/app_router.dart';
import 'package:runway_app/Core/utils/app_styles.dart';
import 'package:runway_app/Core/utils/assets.dart';
import 'package:runway_app/Features/home_view/data/models/category_model.dart';
import 'package:runway_app/Features/home_view/presentation/views/widgets/custom_video_player.dart';

class MobileHomeBody extends StatelessWidget {
  const MobileHomeBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      fit: StackFit.expand,
      children: [
        CustomVideoPlayer(),
        Positioned(bottom: 0, right: 0, left: 0, child: Categories()),
      ],
    );
  }
}

class Categories extends StatelessWidget {
  const Categories({super.key});
  static final List<CategoryModel> categories = [
    CategoryModel(image: Assets.imagesWomen, name: 'Women'),
    CategoryModel(image: Assets.imagesMen, name: 'Men'),
    CategoryModel(image: Assets.imagesHome, name: 'Home'),
    CategoryModel(image: Assets.imagesKids, name: 'Kids'),
    CategoryModel(image: Assets.imagesDeals, name: 'Deals'),
  ];

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      decoration: BoxDecoration(
        color: Theme.of(context).brightness == Brightness.dark ? Colors.black54 : Colors.white54,
      ),
      child: Padding(
        padding: const EdgeInsets.only(left: 10),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Gap(10),
            Text('Categories', style: AppStyles.styleMedium14(context)),
            Gap(10),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: List.generate(categories.length, (index) {
                    return Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Column(
                        children: [
                          GestureDetector(
                            onTap: () => context.push(AppRouter.kCategoryView),
                            child: Image.asset(categories[index].image, width: 75),
                          ),
                          Gap(10),
                          Text(categories[index].name, style: AppStyles.styleMedium14(context)),
                        ],
                      ),
                    );
                  }),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
