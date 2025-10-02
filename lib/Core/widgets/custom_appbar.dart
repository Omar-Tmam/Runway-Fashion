import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:runway_app/Core/cubit/theme_cubit.dart';
import 'package:runway_app/Core/utils/app_styles.dart';

class CustomAppbar extends StatelessWidget implements PreferredSizeWidget {
  const CustomAppbar({super.key, required this.widget, required this.suffix, required this.title});

  final String suffix, title;
  final Widget widget;

  @override
  Size get preferredSize => const Size.fromHeight(80);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      centerTitle: true,
      leading: widget,
      leadingWidth: 32,
      title: Text(title, style: AppStyles.styleBold20(context)),
      actions: [
        SvgPicture.asset(
          suffix,
          width: 24,
          color: Theme.of(context).brightness == Brightness.dark ? Colors.white : Colors.black,
        ),
        const SizedBox(width: 12),

        InkWell(
          onTap: () {
            context.read<ThemeCubit>().toggleTheme();
          },
          child: Icon(
            Theme.of(context).brightness == Brightness.dark
                ? CupertinoIcons.sun_max
                : CupertinoIcons.moon_stars,
            size: 28,
            color: Theme.of(context).brightness == Brightness.dark ? Colors.yellow : Colors.black,
          ),
        ),
        const SizedBox(width: 16),
      ],
    );
  }
}
