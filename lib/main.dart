import 'package:flutter/material.dart';
import 'package:media_kit/media_kit.dart';
import 'package:runway_app/Core/utils/app_router.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  MediaKit.ensureInitialized();
  runApp(const RunWayFashion());
}

class RunWayFashion extends StatelessWidget {
  const RunWayFashion({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      themeMode: ThemeMode.dark,
      darkTheme: ThemeData.dark().copyWith(),
      theme: ThemeData.light().copyWith(
          appBarTheme: AppBarTheme(
              surfaceTintColor: Colors.transparent, backgroundColor: Colors.transparent),
          scaffoldBackgroundColor: Colors.white),
      debugShowCheckedModeBanner: false,
      routerConfig: AppRouter.router,
    );
  }
}
