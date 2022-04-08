import 'package:get/get.dart';

class ImagePickerController extends GetxController {
  var isProfilePiceSet = false.obs;
  var profilePicPath = ''.obs; 
  //
   var isSignupPicSet = false.obs;
  var signupPicPath = ''.obs;

  void setProfilePic(String path) {
    profilePicPath.value = path;
    isProfilePiceSet.value = true;
     
  }
  void setProfilePicWhileSignup(String path) {
    signupPicPath.value = path;
    isSignupPicSet.value = true;
    
  }
}
