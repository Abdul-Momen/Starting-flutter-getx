import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get_navigation/src/root/get_material_app.dart';
import 'package:get_storage/get_storage.dart';
import 'package:luggage/modules/splash/splash_screen.dart';
import 'package:luggage/states/bindings/bindings.dart';
import 'package:luggage/states/routes/routes.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await GetStorage.init();
  runApp(MyApp());
  // Add this code below
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
        designSize: const Size(428, 926),
        minTextAdapt: true,
        splitScreenMode: true,
        builder: (context, child) {
          return GetMaterialApp(
            debugShowCheckedModeBanner: false,
            title: 'luggage',
            theme: ThemeData(
              // textTheme: GoogleFonts.interTextTheme(context).bodyMedium
            ),
            getPages: AllRoutes.allRoutes,
            initialRoute: SplashScreen.routeName,
            initialBinding: InitialBinding(),
          );
        });
  }
}
