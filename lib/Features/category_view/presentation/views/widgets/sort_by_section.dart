import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:gap/gap.dart';
import 'package:runway_app/Core/utils/app_styles.dart';
import 'package:runway_app/Core/utils/assets.dart';

class SortBySection extends StatelessWidget {
  const SortBySection({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Text(
          'Sort by',
          style: AppStyles.styleMedium14(context),
        ),
        Gap(23),
        Icon(Icons.arrow_drop_down_sharp),
        Spacer(),
        SvgPicture.asset(Assets.imagesLucideSettings2),
        Gap(5),
        Text(
          'Filter',
          style: AppStyles.styleMedium14(context),
        ),
        Gap(20),
        SvgPicture.asset(
          Assets.imagesIonGridOutline,
          width: 20,
        ),
        Gap(20),
        SvgPicture.asset(
          Assets.imagesSolarUsersGroupRoundedOutline,
          width: 26,
        )
      ],
    );
  }
}
