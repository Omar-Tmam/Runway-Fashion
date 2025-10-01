import 'package:flutter/material.dart';
import 'package:runway_app/Core/utils/custom_adaptive_layout.dart';
import 'package:runway_app/Features/details_view/presentation/views/mobile_details_view.dart';

class DetailsView extends StatelessWidget {
  const DetailsView({super.key});

  @override
  Widget build(BuildContext context) {
    return CustomAdaptiveLayout(
      mobileLayout: (context) => MobileDetailsView(),
      tabletLayout: (context) => SizedBox(),
    );
  }
}