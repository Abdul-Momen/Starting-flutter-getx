import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:luggage/modules/onbording/view/onbording_screen.dart';
import 'package:luggage/states/controller/connectivity_controller.dart';
import 'package:luggage/states/data/prefs.dart';

class SplashScreen extends StatefulWidget {
  static String routeName = '/splash';

  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  final ConnectivityController connectivityController = Get.find<ConnectivityController>();
  @override
  void initState() {
    super.initState();
    Future.delayed(
      const Duration(seconds: 3),
      //go home page
      () {
        Get.offAndToNamed(OnBoardingPage.routeName);
        if (Preference.getIsFristOnbordingFlag()) {
          if (Preference.getLoggedInFlag()) {
            // Get.offAndToNamed(HomeScreen.routeName);
          } else {
            //Get.offAndToNamed(LoginPage.routeName);
          }
        } else {
          Get.offAndToNamed(OnBoardingPage.routeName);
        }
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            Center(
              child: Image.asset(
                'assets/images/logo.jpg',
                fit: BoxFit.cover,
                // height: double.infinity,
                // width: double.infinity,
                width: 300,
                height: 300,
                alignment: Alignment.center,
                repeat: ImageRepeat.noRepeat,
              ),
            ),
            Text(
              "Luggage",
              style: TextStyle(
                  fontSize: 30,
                  fontStyle: FontStyle.italic,
                  color: Colors.blue.shade900,
                  fontWeight: FontWeight.bold),
            ),
          ]),
    );
  }
}
