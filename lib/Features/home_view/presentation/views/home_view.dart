import 'package:flutter/material.dart';
import 'package:runway_app/Core/utils/custom_adaptive_layout.dart';
import 'package:runway_app/Features/home_view/presentation/views/widgets/mobile_home.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return CustomAdaptiveLayout(
      mobileLayout: (context) => MobileHome(),
      tabletLayout: (context) => SizedBox(),
    );
  }
}