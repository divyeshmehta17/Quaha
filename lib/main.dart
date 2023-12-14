import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';
import 'package:quaha/app/modules/Splash/bindings/splash_binding.dart';
import 'package:quaha/firebase_options.dart';

import 'app/routes/app_pages.dart';
import 'app/services/auth.dart';
import 'app/services/storage.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(options: DefaultFirebaseOptions.currentPlatform);
  await initGetServices();
  SystemChrome.setPreferredOrientations(
    [DeviceOrientation.portraitUp],
  );

  return runApp(GestureDetector(
    onTap: () => FocusManager.instance.primaryFocus?.unfocus(),
    child: GetMaterialApp(
      theme: ThemeData(scaffoldBackgroundColor: const Color(0xff353A64)),
      // darkTheme: AppTheme.dark,
      defaultTransition: Transition.fade,
      smartManagement: SmartManagement.full,
      debugShowCheckedModeBanner: false,
      locale: const Locale('en', 'US'),
      //translationsKeys: AppTranslation.translations,
      initialRoute: AppPages.INITIAL,
      initialBinding: SplashBinding(),
      getPages: AppPages.routes,
    ),
  ));
}

Future<void> initGetServices() async {
  await Get.putAsync<GetStorageService>(() => GetStorageService().initState());
  await Get.putAsync<Auth>(() async => Auth());
}
