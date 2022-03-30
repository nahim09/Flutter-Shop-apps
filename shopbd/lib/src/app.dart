import 'package:flutter/material.dart';
import 'package:get/get_core/src/smart_management.dart';
import 'package:get/get_navigation/src/root/get_material_app.dart';
import 'package:get/get_state_manager/src/rx_flutter/rx_obx_widget.dart';
import 'package:shopbd/src/controller/base_controller.dart';
import 'package:shopbd/src/pages/home_page.dart';
import 'package:shopbd/src/pages/splash_page.dart';

class App extends StatelessWidget with BaseController {
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
        debugShowCheckedModeBanner: false,
        smartManagement: SmartManagement.onlyBuilder,

        // auth check page
        home: Obx(() {
          if (authC.authenicated.value)
            return HomePage();
          else
            return SplashPage();
        }));
  }
}