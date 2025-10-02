import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:gap/gap.dart';
import 'package:go_router/go_router.dart';
import 'package:runway_app/Core/utils/app_router.dart';
import 'package:runway_app/Core/utils/app_styles.dart';
import 'package:runway_app/Core/utils/assets.dart';
import 'package:runway_app/Features/category_view/data/models/men_model.dart';

class CategoryItem extends StatelessWidget {
  const CategoryItem({super.key, required this.menModel});
  final MenModel menModel;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () => context.push(AppRouter.kDetailsView, extra: menModel),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          AspectRatio(
            aspectRatio: 200 / 280,
            child: Card(
              color: Color(0xFFEBEBEB),
              elevation: 6,
              shadowColor: Colors.black87,
              shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(18)),
              clipBehavior: Clip.antiAlias,
              child: Hero(
                tag: menModel.image,
                child: Padding(
                  padding: const EdgeInsets.symmetric(vertical: 14),
                  child: Image.asset(fit: BoxFit.fitHeight, height: 250, menModel.image),
                ),
              ),
            ),
          ),
          Gap(10),
          Text(
            overflow: TextOverflow.ellipsis,
            maxLines: 1,
            menModel.name,
            style: AppStyles.styleMedium14(context),
          ),
          Gap(10),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                menModel.price,
                style: const TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
              ),
              SvgPicture.asset(
                color: Theme.of(context).brightness == Brightness.dark
                    ? Colors.white
                    : Colors.black,
                Assets.imagesHeart,
                width: 24,
                height: 24,
              ),
            ],
          ),
        ],
      ),
    );
  }
}
