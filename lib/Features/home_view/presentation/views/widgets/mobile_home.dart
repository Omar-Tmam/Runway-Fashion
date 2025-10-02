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
      appBar: CustomAppbar(
        widget: SvgPicture.asset(
          Assets.imagesMenu,
          color: Theme.of(context).brightness == Brightness.dark ? Colors.white : Colors.black,
        ),
        suffix: Assets.imagesBell,
        title: 'Runway',
      ),
      body: MobileHomeBody(),
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        selectedItemColor: Theme.of(context).brightness == Brightness.dark
            ? Colors.white
            : Colors.black,
        unselectedItemColor: Colors.grey,
        backgroundColor: Theme.of(context).scaffoldBackgroundColor,

        items: [
          BottomNavigationBarItem(icon: Icon(Icons.home_filled), label: "Home"),
          BottomNavigationBarItem(icon: Icon(Icons.favorite), label: "Likes"),
          BottomNavigationBarItem(icon: Icon(Icons.shopping_bag_rounded), label: "bag"),
          BottomNavigationBarItem(icon: Icon(Icons.person), label: "proifile"),
        ],
      ),
    );
  }
}
