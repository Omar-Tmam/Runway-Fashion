import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:runway_app/Core/utils/app_styles.dart';

class CustomAppbar extends StatelessWidget implements PreferredSizeWidget {
  const CustomAppbar({super.key, required this.prefix, required this.suffix, required this.title});
  final String prefix, suffix, title;
  @override
  Size get preferredSize => Size.fromHeight(kToolbarHeight);
  @override
  Widget build(BuildContext context) {
    return AppBar(
      centerTitle: true,
      leading: SizedBox.shrink(),
      leadingWidth: 0,
      title: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          SvgPicture.asset(
            prefix,
            width: 24,
          ),
          Text(
            title,
            style: AppStyles.styleBold20(context),
          ),
          SvgPicture.asset(
            suffix,
            width: 24,
          ),
        ],
      ),
    );
  }
}
