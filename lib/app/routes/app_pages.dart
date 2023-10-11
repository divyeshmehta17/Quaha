import 'package:get/get.dart';

import '../modules/BottomNavigationBar/bindings/BottomNavigationBarbinding.dart';
import '../modules/BottomNavigationBar/views/BottomNavigationBar.dart';
import '../modules/Login/bindings/login_binding.dart';
import '../modules/Login/views/login_view.dart';
import '../modules/Splash/bindings/splash_binding.dart';
import '../modules/Splash/views/splash_view.dart';
import '../modules/coursesscreen/bindings/coursesscreen_binding.dart';
import '../modules/coursesscreen/views/coursesscreen_view.dart';
import '../modules/details1/bindings/details1_binding.dart';
import '../modules/details1/views/details1_view.dart';
import '../modules/homescreen/bindings/homescreen_binding.dart';
import '../modules/homescreen/views/homescreen_view.dart';
import '../modules/quizscreen/bindings/quizscreen_binding.dart';
import '../modules/quizscreen/views/quizscreen_view.dart';
import '../modules/signup/bindings/signup_binding.dart';
import '../modules/signup/views/signup_view.dart';
import '../modules/splash1/bindings/splash1_binding.dart';
import '../modules/splash1/views/splash1_view.dart';
import '../modules/splash2/bindings/splash2_binding.dart';
import '../modules/splash2/views/splash2_view.dart';
import '../modules/splash3/bindings/splash3_binding.dart';
import '../modules/splash3/views/splash3_view.dart';
import '../modules/splash4/bindings/splash4_binding.dart';
import '../modules/splash4/views/splash4_view.dart';
import '../modules/verfication/bindings/verfication_binding.dart';
import '../modules/verfication/views/verfication_view.dart';
import '../modules/viscreen/bindings/viscreen_binding.dart';
import '../modules/viscreen/views/viscreen_view.dart';

part 'app_routes.dart';

class AppPages {
  AppPages._();

  static const INITIAL = Routes.SPLASH;

  static final routes = [
    GetPage(
      name: _Paths.SPLASH,
      page: () => const SplashView(),
      binding: SplashBinding(),
    ),
    GetPage(
      name: _Paths.SPLASH1,
      page: () => const Splash1View(),
      binding: Splash1Binding(),
    ),
    GetPage(
      name: _Paths.SPLASH2,
      page: () => const Splash2View(),
      binding: Splash2Binding(),
    ),
    GetPage(
      name: _Paths.SPLASH3,
      page: () => const Splash3View(),
      binding: Splash3Binding(),
    ),
    GetPage(
      name: _Paths.SPLASH4,
      page: () => const Splash4View(),
      binding: Splash4Binding(),
    ),
    GetPage(
      name: _Paths.LOGIN,
      page: () => const LoginView(),
      binding: LoginBinding(),
    ),
    GetPage(
      name: _Paths.SIGNUP,
      page: () => const SignupView(),
      binding: SignupBinding(),
    ),
    GetPage(
      name: Routes.VERFICATION,
      page: () => const VerficationView(),
      binding: VerficationBinding(),
    ),
    GetPage(
      name: _Paths.DETAILS1,
      page: () => Details1View(),
      binding: Details1Binding(),
    ),
    GetPage(
      name: _Paths.BottomNavBar,
      page: () => QuahaBottomBar(),
      binding: BottomNavigationBarBinding(),
    ),
    GetPage(
      name: _Paths.HOMESCREEN,
      page: () => HomescreenView(),
      binding: HomescreenBinding(),
    ),
    GetPage(
      name: _Paths.QUIZSCREEN,
      page: () => const QuizscreenView(),
      binding: QuizscreenBinding(),
    ),
    GetPage(
      name: _Paths.COURSESSCREEN,
      page: () => const CoursesscreenView(),
      binding: CoursesscreenBinding(),
    ),
    GetPage(
      name: _Paths.VISCREEN,
      page: () => const ViscreenView(),
      binding: ViscreenBinding(),
    ),
  ];
}
