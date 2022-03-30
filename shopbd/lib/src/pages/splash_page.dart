import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:shopbd/src/pages/onboarding_page.dart';
import 'package:shopbd/src/pakages/ktext.dart';

class SplashPage extends StatefulWidget {
  @override
  State<SplashPage> createState() => _SplashPageState();
}

class _SplashPageState extends State<SplashPage> {
  @override
  void initState() {
    super.initState();
    _navigatetowelcomePage();
  }

  _navigatetowelcomePage() async {
    await Future.delayed(const Duration(seconds: 2), () {});
    Get.offAll(OnboardingPage());
  }

  @override
  Widget build(BuildContext context) {
    final Size size = Get.size;
    return Scaffold(
      body: Column(
        children: [
          SizedBox(
            height: size.height * 0.25,
          ),
          Center(
            child: Container(
              height: 200,
              width: 200,
              decoration: const BoxDecoration(
                image: DecorationImage(
                  image: AssetImage(
                    'assets/splash/icon.png',
                  ),
                ),
                shape: BoxShape.circle,
              ),
            ),
          ),
          SizedBox(
            height: size.height * 0.05,
          ),
          KText(
            text: 'Shop Demo',
            fontSize: 22,
            fontWeight: FontWeight.bold,
            color: Colors.black,
          ),
        ],
      ),
    );
  }
}