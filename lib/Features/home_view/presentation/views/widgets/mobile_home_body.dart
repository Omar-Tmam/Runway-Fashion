import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:runway_app/Core/utils/app_styles.dart';
import 'package:runway_app/Features/home_view/presentation/views/widgets/custom_video_player.dart';

class MobileHomeBody extends StatelessWidget {
  const MobileHomeBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        CustomVideoPlayer(),
        Positioned(bottom: 0, right: 0, left: 0, child: Categories())
      ],
    );
  }
}

class Categories extends StatelessWidget {
  const Categories({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: 240,
      decoration: BoxDecoration(color: Colors.white),
      child: Padding(
        padding: const EdgeInsets.only(left: 10),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Gap(10),
            Text(
              'Categories',
              style: AppStyles.styleMedium14(context),
            )
          ],
        ),
      ),
    );
  }
}
