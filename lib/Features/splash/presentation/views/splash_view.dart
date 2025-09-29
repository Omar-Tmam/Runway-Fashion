import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:gap/gap.dart';
import 'package:runway_app/Core/utils/assets.dart';
import 'package:runway_app/Features/splash/presentation/views/widgets/line_animation.dart';

class SplashView extends StatefulWidget {
  const SplashView({super.key});

  @override
  State<SplashView> createState() => _SplashViewState();
}

class _SplashViewState extends State<SplashView> {
  @override
  void initState() {
    Future.delayed(Duration(milliseconds: 800), () {});
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SvgPicture.asset(
              Assets.imagesRunway,
              width: 188,
            ),
            Gap(6),
            LineAnimation(
                child: SvgPicture.asset(
              Assets.imagesRectangle,
              width: 189,
            ))
          ],
        ),
      ),
    );
  }
}
