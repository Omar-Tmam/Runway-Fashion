import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:runway_app/Core/utils/app_styles.dart';

class CustomAppbar extends StatelessWidget implements PreferredSizeWidget {
  const CustomAppbar({super.key, required this.widget, required this.suffix, required this.title});
  final String suffix, title;
  final Widget widget;
  @override
  Size get preferredSize => Size.fromHeight(80);
  @override
  Widget build(BuildContext context) {
    return AppBar(
      centerTitle: true,
      leading: SizedBox.shrink(),
      leadingWidth: 0,
      title: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          widget,
          Text(title, style: AppStyles.styleBold20(context)),
          SvgPicture.asset(
            color: Theme.of(context).brightness == Brightness.dark ? Colors.white : Colors.black,
            suffix,
            width: 24,
          ),
        ],
      ),
    );
  }
}
