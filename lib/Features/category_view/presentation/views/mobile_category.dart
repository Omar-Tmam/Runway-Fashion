import 'package:flutter/material.dart';
import 'package:runway_app/Core/utils/assets.dart';
import 'package:runway_app/Features/category_view/presentation/views/widgets/mobile_category_body.dart';
import 'package:runway_app/Features/home_view/presentation/views/widgets/custom_appbar.dart';

class MobileCategory extends StatelessWidget {
  const MobileCategory({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppbar(prefix: Assets.imagesArrowLeft, suffix: Assets.imagesBag, title: 'Men'),
    body: MobileCategoryBody(),
    
    );
  }
}
