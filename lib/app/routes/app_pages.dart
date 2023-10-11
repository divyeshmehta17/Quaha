import 'package:get/get.dart';

import '../modules/BottomNavigationBar/bindings/BottomNavigationBarbinding.dart';
import '../modules/BottomNavigationBar/views/BottomNavigationBar.dart';
import '../modules/Categories/bindings/Categories_binding.dart';
import '../modules/Categories/views/Categories_view.dart';
import '../modules/Courseentryscreen/bindings/courseentryscreen_binding.dart';
import '../modules/Courseentryscreen/views/courseentryscreen_view.dart';
import '../modules/Login/bindings/login_binding.dart';
import '../modules/Login/views/login_view.dart';
import '../modules/Splash/bindings/splash_binding.dart';
import '../modules/Splash/views/splash_view.dart';
import '../modules/adminpanel/bindings/adminpanel_binding.dart';
import '../modules/adminpanel/views/adminpanel_view.dart';
import '../modules/coursedetails/bindings/coursedetails_binding.dart';
import '../modules/coursedetails/views/coursedetails_view.dart';
import '../modules/courseviewcontent/bindings/courseviewcontent_binding.dart';
import '../modules/courseviewcontent/views/courseviewcontent_view.dart';
import '../modules/details1/bindings/details1_binding.dart';
import '../modules/details1/views/details1_view.dart';
import '../modules/discoverallcontent/bindings/discoverallcontent_binding.dart';
import '../modules/discoverallcontent/views/discoverallcontent_view.dart';
import '../modules/editprofile/bindings/editprofile_binding.dart';
import '../modules/editprofile/views/editprofile_view.dart';
import '../modules/homescreen/bindings/homescreen_binding.dart';
import '../modules/homescreen/views/homescreen_view.dart';
import '../modules/overlayscreen/bindings/overlayscreen_binding.dart';
import '../modules/overlayscreen/views/overlayscreen_view.dart';
import '../modules/popularcourses/bindings/popularcourses_binding.dart';
import '../modules/popularcourses/views/popularcourses_view.dart';
import '../modules/profile/bindings/profile_binding.dart';
import '../modules/profile/views/profile_view.dart';
import '../modules/quiz/excitingquizesseeall/bindings/excitingquizesseeall_binding.dart';
import '../modules/quiz/excitingquizesseeall/views/excitingquizesseeall_view.dart';
import '../modules/quiz/hint/bindings/hint_binding.dart';
import '../modules/quiz/hint/views/hint_view.dart';
import '../modules/quiz/quizbranding/bindings/quizbranding_binding.dart';
import '../modules/quiz/quizbranding/views/quizbranding_view.dart';
import '../modules/quiz/quizcollectiondetails/bindings/quizcollectiondetails_binding.dart';
import '../modules/quiz/quizcollectiondetails/views/quizcollectiondetails_view.dart';
import '../modules/quiz/quizdetails/bindings/quizdetails_binding.dart';
import '../modules/quiz/quizdetails/views/quizdetails_view.dart';
import '../modules/quiz/quizintro/bindings/quizintro_binding.dart';
import '../modules/quiz/quizintro/views/quizintro_view.dart';
import '../modules/quiz/quizscreen/bindings/quizscreen_binding.dart';
import '../modules/quiz/quizscreen/views/quizscreen_view.dart';
import '../modules/rewardsandbadges/bindings/rewardsandbadges_binding.dart';
import '../modules/rewardsandbadges/views/rewardsandbadges_view.dart';
import '../modules/searchscreen/bindings/searchscreen_binding.dart';
import '../modules/searchscreen/views/searchscreen_view.dart';
import '../modules/searchtechnology/bindings/searchtechnology_binding.dart';
import '../modules/searchtechnology/views/searchtechnology_view.dart';
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
import '../modules/splash5/bindings/splash5_binding.dart';
import '../modules/splash5/views/splash5_view.dart';
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
      page: () => Splash1View(),
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
      name: _Paths.VERIFICATION,
      page: () => const VerficationView(),
      binding: VerficationBinding(),
    ),
    GetPage(
      name: _Paths.DETAILS1,
      page: () => const Details1View(),
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
      page: () => QuizscreenView(),
      binding: QuizscreenBinding(),
    ),
    GetPage(
      name: _Paths.VISCREEN,
      page: () => const ViscreenView(),
      binding: ViscreenBinding(),
    ),
    GetPage(
      name: _Paths.SEARCHSCREEN,
      page: () => SearchscreenView(),
      binding: SearchscreenBinding(),
    ),
    GetPage(
      name: _Paths.SPLASH5,
      page: () => const Splash5View(),
      binding: Splash5Binding(),
    ),
    GetPage(
      name: _Paths.PROFILE,
      page: () => ProfileView(),
      binding: ProfileBinding(),
    ),
    GetPage(
      name: _Paths.EDITPROFILE,
      page: () => const EditprofileView(),
      binding: EditprofileBinding(),
    ),
    GetPage(
      name: _Paths.SEEALL,
      page: () => const Categories(),
      binding: CategoriesBinding(),
    ),
    GetPage(
      name: _Paths.OVERLAYSCREEN,
      page: () => OverlayscreenView(),
      binding: OverlayscreenBinding(),
    ),
    GetPage(
      name: _Paths.SEARCHTECHNOLOGY,
      page: () => const SearchtechnologyView(),
      binding: SearchtechnologyBinding(),
    ),
    GetPage(
      name: _Paths.POPULARCOURSES,
      page: () => PopularcoursesView(),
      binding: PopularcoursesBinding(),
    ),
    GetPage(
      name: _Paths.COURSEVIEWCONTENT,
      page: () => CourseviewcontentView(),
      binding: CourseviewcontentBinding(),
    ),
    GetPage(
      name: _Paths.DISCOVERALLCONTENT,
      page: () => const DiscoverallcontentView(),
      binding: DiscoverallcontentBinding(),
    ),
    GetPage(
      name: _Paths.QUIZINTRO,
      page: () => introView(
        onpressed: () {},
      ),
      binding: QuizintroBinding(),
    ),
    GetPage(
      name: _Paths.EXCITINGQUIZESSEEALL,
      page: () => const ExcitingquizesseeallView(),
      binding: ExcitingquizesseeallBinding(),
    ),
    GetPage(
      name: _Paths.QUIZDETAILS,
      page: () => const QuizdetailsView(),
      binding: QuizdetailsBinding(),
    ),
    GetPage(
      name: _Paths.QUIZCOLLECTIONDETAILS,
      page: () => const QuizcollectiondetailsView(),
      binding: QuizcollectiondetailsBinding(),
    ),
    GetPage(
      name: _Paths.QUIZBRANDING,
      page: () => const QuizbrandingView(),
      binding: QuizbrandingBinding(),
    ),
    GetPage(
      name: _Paths.HINT,
      page: () => const HintView(),
      binding: HintBinding(),
    ),
    GetPage(
      name: _Paths.ADMINPANEL,
      page: () => const AdminPanelView(),
      binding: AdminpanelBinding(),
    ),
    GetPage(
      name: _Paths.COURSEENTRYSCREEN,
      page: () => const CourseentryscreenView(),
      binding: CourseentryscreenBinding(),
    ),
    GetPage(
      name: _Paths.COURSEDETAILS,
      page: () => const CoursedetailsView(),
      binding: CoursedetailsBinding(),
    ),
    GetPage(
      name: _Paths.REWARDSANDBADGES,
      page: () => const RewardsandbadgesView(),
      binding: RewardsandbadgesBinding(),
    ),
  ];
}
