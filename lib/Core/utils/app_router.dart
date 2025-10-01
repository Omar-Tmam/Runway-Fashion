import 'package:go_router/go_router.dart';
import 'package:runway_app/Features/category_view/presentation/views/category_view.dart';
import 'package:runway_app/Features/details_view/presentation/views/details_view.dart';
import 'package:runway_app/Features/home_view/presentation/views/home_view.dart';
import 'package:runway_app/Features/splash/presentation/views/splash_view.dart';

abstract class AppRouter {
  static const kSplash = '/';
  static const kHomeView = '/homeView';
  static const kCategoryView = '/categoryView';
  static const kDetailsView = '/detailsView';
  static final router = GoRouter(routes: [
    GoRoute(
      path: kSplash,
      builder: (context, state) => SplashView(),
    ),
    GoRoute(
      path: kHomeView,
      builder: (context, state) => HomeView(),
    ),
    GoRoute(
      path: kCategoryView,
      builder: (context, state) => CategoryView(),
    ),
    GoRoute(
      path: kDetailsView,
      builder: (context, state) => DetailsView(),
    )
  ]);
}
