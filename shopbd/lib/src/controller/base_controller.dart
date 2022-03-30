import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_instance/get_instance.dart';
import 'package:http/http.dart' as http;
import 'package:shopbd/src/controller/auth_controller.dart';
import 'package:shopbd/src/controller/product_controller.dart';

class BaseController {
  final productsC = Get.put(ProductController());
  final authC = Get.put(AuthController());
}