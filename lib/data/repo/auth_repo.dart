import 'dart:io';

import 'package:get/get.dart';
import 'package:get/get_connect/http/src/response/response.dart';
import 'package:selfe/constants/app_constant.dart';
import 'package:selfe/data/api/api_client.dart';
import 'package:selfe/models/sign_up_body_model.dart';
import 'package:shared_preferences/shared_preferences.dart';

class AuthRepo {
  final ApiClient apiClient;
  final SharedPreferences sharedPreferences;

  AuthRepo({
    required this.apiClient,
    required this.sharedPreferences,
  });

//registrtion
  Future<Response> registration(SignUpBody signUpBody) async {
    // print('final data' + signUpBody.toJson().toString());
    return await apiClient.postData(
        AppConstant.USER_REGISTRATION_URI, signUpBody.toJson());
  }

//login
  Future<Response> login(String email, String password) async {
    return await apiClient.postData(
      AppConstant.USER_LOGIN_URI,
      {"email": email, "password": password},
    );
  }

//save user Token
  Future<bool> saveUserToken(String token) async {
    apiClient.token = token;
    apiClient.updateHeaders(token);
    return await sharedPreferences.setString(AppConstant.TOKEN, token);
  }

//saving the user info
  Future<void> saveUserNumberAndPassword(String phone, String password) async {
    try {
      await sharedPreferences.setString(AppConstant.USER_PHONE, phone);
      await sharedPreferences.setString(AppConstant.USER_PASSWORD, password);
    } catch (e) {
      throw e;
    }
  }

//if the user is already loggedin
  bool userLoggedIn() {
    return sharedPreferences.containsKey(AppConstant.TOKEN);
  }

//logout
  bool clearSharedData() {
    sharedPreferences.remove(AppConstant.TOKEN);
    sharedPreferences.remove(AppConstant.USER_PASSWORD);
    sharedPreferences.remove(AppConstant.USER_PHONE);
    apiClient.token = '';
    apiClient.updateHeaders('');
    return true;
  }

//geting token from sharedpreferences
  Future<String> getUserToken() async {
    print(sharedPreferences.getString(AppConstant.TOKEN));
    return await sharedPreferences.getString(AppConstant.TOKEN) ?? "None";
  }

//
  Future<Response> uploadUserData(
    String bio,
    List<String> list,
    String username,
    File file,
  ) async {
    final form = FormData({
      "user_image": MultipartFile(file, filename: 'aa.jpg'),
      "description": bio,
      "language": list,
      "username": username,
      "token": "hjjsahdfkjhskjdhjfgshdfhkjhf"
    });
    return await apiClient.postData(AppConstant.UPLOAD_URL, form);
  }
}
