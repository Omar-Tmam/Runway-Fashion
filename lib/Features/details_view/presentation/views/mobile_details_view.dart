import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:go_router/go_router.dart';
import 'package:runway_app/Core/utils/assets.dart';
import 'package:runway_app/Core/widgets/custom_appbar.dart';
import 'package:runway_app/Features/category_view/data/models/men_model.dart';
import 'package:runway_app/Features/details_view/presentation/views/widgets/mobile_details_body.dart';

class MobileDetailsView extends StatelessWidget {
  const MobileDetailsView({super.key, required this.menModel});
  final MenModel menModel;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppbar(
        widget: InkWell(
          onTap: () => context.pop(),
          child: SvgPicture.asset(
            Assets.imagesArrowLeft,
            color: Theme.of(context).brightness == Brightness.dark ? Colors.white : Colors.black,
          ),
        ),
        suffix: Assets.imagesBag,
        title: 'Men',
      ),
      body: MobileDetailsBody(menModel: menModel),
    );
  }
}
