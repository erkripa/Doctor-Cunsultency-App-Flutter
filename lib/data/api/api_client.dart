import 'package:get/get.dart';
import 'package:selfe/constants/app_constant.dart';
import 'package:shared_preferences/shared_preferences.dart';

class ApiClient extends GetConnect implements GetxService {
  late String token;
  final String appBaseUrl;
  late SharedPreferences sharedPreferences;
  late Map<String, String> _mainHeaders;

//constuctor with body initialization
  ApiClient({required this.appBaseUrl, required this.sharedPreferences}) {
    baseUrl = appBaseUrl;
    token = sharedPreferences.getString(AppConstant.TOKEN) ?? "";
    timeout = const Duration(seconds: 30);
    _mainHeaders = {
      'Content-type': 'application/json; charset=utf-16',
      'Authorization': 'Bearer $token',
    };
  }

  //update headers
  void updateHeaders(String token) {
    _mainHeaders = {
      // 'Content-type': 'application/json',
      // 'Authorization': 'Bearer $token',
      'Accept-Encoding': 'multipart/form-data'
    };
  }

  //get Request
  Future<Response> getData(String uri, {Map<String, String>? headers}) async {
    try {
      Response response = await get(uri, headers: headers ?? _mainHeaders);
      return response;
    } catch (e) {
      return Response(statusCode: 1, statusText: e.toString());
    }
  }

  //post request
  Future<Response> postData(String uri, dynamic body) async {
    print('inside postdata method ' + body.toString());
    try {
      Response response = await post(
        uri,
        body,
      );
      print("inside try->" + response.statusCode.toString());
      return response;
    } catch (e) {
      return Response(statusCode: 1, statusText: e.toString());
    }
  }

  //
}
