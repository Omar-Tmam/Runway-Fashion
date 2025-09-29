import 'package:flutter/material.dart';
import 'package:runway_app/Core/utils/assets.dart';
import 'package:runway_app/Features/home_view/presentation/views/widgets/custom_appbar.dart';

class MobileHome extends StatelessWidget {
  const MobileHome({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppbar(prefix: Assets.imagesMenu, suffix: Assets.imagesBell, title: 'Runway'),
    );
  }
}
