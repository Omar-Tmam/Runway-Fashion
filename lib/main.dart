import 'package:flutter/material.dart';
import 'package:runway_app/Core/utils/app_router.dart';

void main() {
  runApp(const RunWayFashion());
}

class RunWayFashion extends StatelessWidget {
  const RunWayFashion({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      routerConfig: AppRouter.router,
    );
  }
}
