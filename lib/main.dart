import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:runway_app/Core/utils/app_router.dart';

void main() {
  debugPaintSizeEnabled = false;
  runApp(const RunWayFashion());
}

class RunWayFashion extends StatelessWidget {
  const RunWayFashion({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      themeMode: ThemeMode.light,
      darkTheme: ThemeData.dark().copyWith(),
      theme: ThemeData.light().copyWith(
        appBarTheme: AppBarTheme(
          surfaceTintColor: Colors.transparent,
          backgroundColor: Colors.transparent,
        ),
        scaffoldBackgroundColor: Colors.white,
      ),
      debugShowCheckedModeBanner: false,
      routerConfig: AppRouter.router,
    );
  }
}
