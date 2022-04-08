import 'package:get/get.dart';
import 'package:selfe/data/repo/super_category_repo.dart';
import 'package:selfe/models/sc_model.dart';

class SuperCategoryController extends GetxController {
  final SuperCategoryRepo superCategoryRepo;
  SuperCategoryController({required this.superCategoryRepo});


List<SCModel> _scModelList = [];
List<SCModel> get scmodelList => _scModelList;


  //get super-category-list
 Future<void> getSuperCategoryList() async {
    Response response = await superCategoryRepo.getSuperCategoryList();

    if (response.statusCode == 200) {
      _scModelList = [];
      // _scModelList.addAll(SCModel.fromJson(response.body))

    } else {
      print('could not get super category');
    }
  }
}
