import 'package:go_router/go_router.dart';
import 'package:runway_app/Features/splash/presentation/views/splash_view.dart';

abstract class AppRouter {
  static const kSplash = 'splash';
  static final router = GoRouter(routes: [
    GoRoute(
      path: kSplash,
      builder: (context, state) => SplashView(),
    )
  ]);
}
