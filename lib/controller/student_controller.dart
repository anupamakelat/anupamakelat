


import 'package:get/get_rx/src/rx_types/rx_types.dart';
import 'package:get/get_state_manager/src/simple/get_controllers.dart';
import 'package:getx_student_app/database/student.dart';
import 'package:image_picker/image_picker.dart';

class StudentGetX extends GetxController {
  RxString? profileImage = ''.obs;
  RxString? dateOfBirth = DateTime.now().toString().obs;
  RxString? gender = ''.obs;
  RxString? hub = ''.obs;
 RxList studentList = [].obs;

  // int count = 0;

//to add image
  getImage() async {
    final picker = ImagePicker();
    final pickedImage = await picker.pickImage(source: ImageSource.gallery);
    if (pickedImage != null) {
      profileImage!.value = pickedImage.path.toString();
    }
  }

//to add dob
  getDOB(DateTime dob) {
    dateOfBirth?.value = dob.toString();
  }


  getGender(String g) {
    gender!.value = g;
  }


  getHub(String d) {
    hub!.value = d;
  }

  searchStudent(List<StudentModel> newList) {
    studentList = newList as RxList;
    update();
  }
}
