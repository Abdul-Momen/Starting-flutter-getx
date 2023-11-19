
import 'package:get/route_manager.dart';
import 'package:luggage/modules/onbording/view/onbording_screen.dart';
import 'package:luggage/modules/splash/splash_screen.dart';
import '../bindings/bindings.dart';

class AllRoutes {
  static List<GetPage> allRoutes = [
    GetPage(
      name: SplashScreen.routeName,
      page: () => SplashScreen(),
      binding: InitialBinding(),
    ),
    GetPage(
      name: OnBoardingPage.routeName,
      page: () => const OnBoardingPage(),
      //binding: BannerBinding(),
    ),

  ];
}
