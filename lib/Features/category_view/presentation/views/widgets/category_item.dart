import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:gap/gap.dart';
import 'package:runway_app/Core/utils/app_styles.dart';

class CategoryItem extends StatelessWidget {
  const CategoryItem(
      {super.key,
      required this.image,
      required this.name,
      required this.price,
      required this.icon});
  final String image, name, price, icon;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        AspectRatio(
          aspectRatio: 200 / 250,
          child: Card(
            color: Color(0xFFEBEBEB),
            elevation: 6,
            shadowColor: Colors.black87,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(18),
            ),
            clipBehavior: Clip.antiAlias,
            child: Hero(
              tag: image,
              child: Padding(
                padding: const EdgeInsets.symmetric(vertical: 14),
                child: Image.asset(
                  image,
                  fit: BoxFit.contain,
                ),
              ),
            ),
          ),
        ),
        Gap(10),
        Text(
          overflow: TextOverflow.ellipsis,
          maxLines: 1,
          name,
          style: AppStyles.styleMedium14(context),
        ),
        Gap(10),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              price,
              style: const TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.bold,
              ),
            ),
            SvgPicture.asset(
              icon,
              width: 24,
              height: 24,
            ),
          ],
        ),
      ],
    );
  }
}
