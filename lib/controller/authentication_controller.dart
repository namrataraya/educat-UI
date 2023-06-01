// ignore_for_file: unused_import, prefer_final_fields

import 'dart:developer';

import 'package:educat/domain/authentication.dart';
import 'package:get/get.dart';



class AuthenticationController extends GetxController {
  var _logged = false.obs;
  final Authentication _authentication = Get.put(Authentication());

  bool get logged => _logged.value;

  set logged(bool mode) {
    _logged.value = mode;
  }

  void initializeRoute() async {
    logged = await _authentication.init;
  }

  AuthenticationController() {
    initializeRoute();
  }

  // para cada uno llamar los métodos del use_case authentication

  Future<bool> login(user, password) async {
    bool rta = await _authentication.login(user, password);
    _logged.value = rta;
    return Future.value(rta);
  }

  Future<bool> signup(user, password) async {
    await _authentication.signup(user, password);
    return Future.value(true);
  }

  void logout() {
    _authentication.logout();
    _logged.value = false;
  }
}
