import 'package:my_portfolio_app/BOs/MyExperienceBO/MyExperienceBO.dart';
import 'package:get/get.dart';

class ExperienceScreenVM extends GetxController {
  ExperienceScreenVM() {
    setExperienceValue();
  }
  // Define an observable variable
  List<MyExperienceBO> experienceList = [
    MyExperienceBO(title: '', assetPath: '', companyName: '', duration: ''),
  ].obs; // ".obs" makes it observable

  // Observable variable for hover effect
  RxBool isHover = false.obs;
  RxInt hoverIndex = (-1).obs;

  // Set value for my experience list
  void setExperienceValue() {
    try {
      experienceList = [
        MyExperienceBO(
          title: 'FLUTTER MOBILE APP DEVELOPER',
          assetPath: 'lib/Resources/Images/AvasoftLogo.jpeg',
          companyName: 'Avasoft Pvt Ltd, Chennai',
          duration: 'Sept 2022 - Sept 2024',
        ),
        MyExperienceBO(
          title: 'BACKEND LEAD DEVELOPER',
          assetPath: 'lib/Resources/Images/AvasoftLogo.jpeg',
          companyName: 'Avasoft Pvt Ltd, Chennai',
          duration: 'Jan 2022 - Aug 2022',
        ),
        MyExperienceBO(
          title: 'XAMARIN MOBILE APP DEVELOPER',
          assetPath: 'lib/Resources/Images/AvasoftLogo.jpeg',
          companyName: 'Avasoft Pvt Ltd, Chennai',
          duration: 'Jan 2022 - Aug 2022',
        ),
        MyExperienceBO(
          title: 'TRAINEE SOFTWARE ENGINEER',
          assetPath: 'lib/Resources/Images/AvasoftLogo.jpeg',
          companyName: 'Avasoft Pvt Ltd, Chennai',
          duration: 'Nov 2021 - Dec 2021',
        ),
      ];
    } catch (ex) {
      print("Exception: ${ex.toString()}");
    }
  }

  // Set value for isHover
  void setHoverValue({required bool value}) {
    try {
      isHover.value = value;
    } catch (ex) {
      print("Exception: ${ex.toString()}");
    }
  }

  // Set value for hoverIndex
  void setHoverIndexValue({required int value}) {
    try {
      hoverIndex.value = value;
    } catch (ex) {
      print("Exception: ${ex.toString()}");
    }
  }
}
