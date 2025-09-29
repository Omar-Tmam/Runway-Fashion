import 'package:go_router/go_router.dart';
import 'package:runway_app/Features/home_view/presentation/views/home_view.dart';
import 'package:runway_app/Features/splash/presentation/views/splash_view.dart';

abstract class AppRouter {
  static const kSplash = '/';
  static const kHomeView = 'homeView';
  static final router = GoRouter(routes: [
    GoRoute(
      path: kSplash,
      builder: (context, state) => SplashView(),
    ),
    GoRoute(
      path: kHomeView,
      builder: (context, state) => HomeView(),
    )
  ]);
}
