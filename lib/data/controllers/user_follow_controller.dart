import 'package:get/get.dart';
import 'package:selfe/models/user_follow_model.dart';

class UserFollowController extends GetxController {

  List<UserFollowModel> follwedMentor = [];

  void wantsToFollow(UserFollowModel userFollow) {
    if (follwedMentor.contains(userFollow)) {
      follwedMentor.remove(userFollow);
    } else {
      follwedMentor.add(userFollow);
    }

    print(follwedMentor.length);
    for (var item in follwedMentor) {
      print(item.name);
    }
    update();
  }
}
