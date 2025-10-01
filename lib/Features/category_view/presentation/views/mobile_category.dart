import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:go_router/go_router.dart';
import 'package:runway_app/Core/utils/assets.dart';
import 'package:runway_app/Core/widgets/custom_appbar.dart';
import 'package:runway_app/Features/category_view/presentation/views/widgets/mobile_category_body.dart';

class MobileCategory extends StatelessWidget {
  const MobileCategory({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppbar(
          widget: GestureDetector(
              onTap: () => context.pop(), child: SvgPicture.asset(Assets.imagesArrowLeft)),
          suffix: Assets.imagesBag,
          title: 'Men'),
      body: MobileCategoryBody(),
    );
  }
}
