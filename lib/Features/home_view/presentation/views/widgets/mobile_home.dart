import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:runway_app/Core/utils/assets.dart';
import 'package:runway_app/Core/widgets/custom_appbar.dart';
import 'package:runway_app/Features/home_view/presentation/views/widgets/mobile_home_body.dart';

class MobileHome extends StatelessWidget {
  const MobileHome({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppbar(widget: SvgPicture.asset(Assets.imagesMenu), suffix: Assets.imagesBell, title: 'Runway'),
      body: MobileHomeBody(),
    );
  }
}
