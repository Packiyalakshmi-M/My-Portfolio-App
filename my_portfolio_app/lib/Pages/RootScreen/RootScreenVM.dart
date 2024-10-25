import 'package:get/get.dart';

class RootScreenVM extends GetxController {
  // Observable variable for selecting home
  RxBool isHomeSelected = true.obs;

  // Set value for isHomeSelected
  void setHomeValue({required bool value}) {
    try {
      isHomeSelected.value = value;
    } catch (ex) {
      print("Exception: ${ex.toString()}");
    }
  }

  // Observable variable for selecting about
  RxBool isAboutSelected = false.obs;

  // Set value for isAboutSelected
  void setAboutValue({required bool value}) {
    try {
      isAboutSelected.value = value;
    } catch (ex) {
      print("Exception: ${ex.toString()}");
    }
  }

  // Observable variable for selecting experience
  RxBool isExperienceSelected = false.obs;

  // Set value for isExperienceSelected
  void setExperienceValue({required bool value}) {
    try {
      isExperienceSelected.value = value;
    } catch (ex) {
      print("Exception: ${ex.toString()}");
    }
  }

  // Observable variable for selecting projects
  RxBool isProjectsSelected = false.obs;

  // Set value for isProjectsSelected
  void setProjectsValue({required bool value}) {
    try {
      isProjectsSelected.value = value;
    } catch (ex) {
      print("Exception: ${ex.toString()}");
    }
  }

  // Observable variable for selecting skills
  RxBool isSkillsSelected = false.obs;

  // Set value for isSkillsSelected
  void setSkillsValue({required bool value}) {
    try {
      isSkillsSelected.value = value;
    } catch (ex) {
      print("Exception: ${ex.toString()}");
    }
  }

  // Observable variable for selecting works
  RxBool isWorksSelected = false.obs;

  // Set value for isWorksSelected
  void setWorksValue({required bool value}) {
    try {
      isWorksSelected.value = value;
    } catch (ex) {
      print("Exception: ${ex.toString()}");
    }
  }

  // Observable variable for selecting contacts
  RxBool isContactsSelected = false.obs;

  // Set value for isContactsSelected
  void setContactValue({required bool value}) {
    try {
      isContactsSelected.value = value;
    } catch (ex) {
      print("Exception: ${ex.toString()}");
    }
  }
}
