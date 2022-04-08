import 'package:get/get.dart';
import 'package:selfe/constants/app_constant.dart';
import 'package:selfe/data/api/api_client.dart';

class SuperCategoryRepo {
  final ApiClient apiClient;

  SuperCategoryRepo({required this.apiClient});

  //get All Super category List
  Future<Response> getSuperCategoryList() async {
    return await apiClient.getData(AppConstant.SUPER_CATEGORY_URI);
  }
}
