import 'dart:io';

import 'package:get/get.dart';
import 'package:selfe/data/repo/auth_repo.dart';
import 'package:selfe/models/response_model.dart';
import 'package:selfe/models/sign_up_body_model.dart';

class AuthController extends GetxController implements GetxService {
  final AuthRepo authRepo;

  AuthController({required this.authRepo});

  bool _isLoading = false;
  bool get isLoading => _isLoading;

  final List<String> _gender = ["Male", "Female"];
  List<String> get gender => _gender;
  String _selectedGender = '';
  String get selectedGender => _selectedGender;

//registration
  Future<ResponseModel> registration(SignUpBody signUpBody) async {
    _isLoading = true;
    update();
    Response response = await authRepo.registration(signUpBody);

    late ResponseModel responseModel;

    if (response.statusCode == 200) {
      print(response.statusCode);
      print('your new token' + response.body["token"].toString());
      authRepo.saveUserToken(response.body['token']);
      responseModel = ResponseModel(true, response.body["token"]);
    } else {
      print('not register');
      print(response.statusText);
      responseModel = ResponseModel(false, response.statusText!);
    }

    _isLoading = false;
    update();
    return responseModel;
  }

//login
  Future<ResponseModel> login(String email, String password) async {
    _isLoading = true;
    update();

    Response response = await authRepo.login(email, password);
    print(response.toString());
    late ResponseModel responseModel;

    if (response.statusCode == 200) {
      print('inside true response');
      // authRepo.saveUserToken(response.body["token"]);
      responseModel = ResponseModel(true, response.body["token"].toString());
    } else {
      print('outside true response');

      responseModel = ResponseModel(false, response.statusText!);
    }

    _isLoading = false;
    update();
    return responseModel;
  }

//saving user number pass
  void saveUserNumberAndPAssword(String phone, String password) {
    authRepo.saveUserNumberAndPassword(phone, password);
  }

//checking user is logged in or not
  bool userLoggedIn() {
    return authRepo.userLoggedIn();
  }

//for logout
  bool logout() {
    return authRepo.clearSharedData();
  }

// change gender
  void chooseGender(value) {
    _selectedGender = value;
    update();
    print(_selectedGender);
  }

//getting user token from sharedpreferences
  Future<String> getUserToken() async {
    return await authRepo.getUserToken();
  }

//registration
  Future<ResponseModel> uploadUserData(
    String bio,
    List<String> list,
    String username,
    File file,
  ) async {
    _isLoading = true;
    update();
    Response response =
        await authRepo.uploadUserData(bio, list, username, file);

    late ResponseModel responseModel;

    if (response.statusCode == 200) {
      print(response.statusCode);

      responseModel = ResponseModel(true, response.statusText!);
    } else {
      print('not upload');
      print(response.statusText);
      responseModel = ResponseModel(false, response.statusText!);
    }

    _isLoading = false;
    update();
    return responseModel;
  }
}
