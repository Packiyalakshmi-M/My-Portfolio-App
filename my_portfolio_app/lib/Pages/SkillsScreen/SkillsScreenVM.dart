import 'package:get/get.dart';
import 'package:my_portfolio_app/BOs/SkillsBO/SkillsBO.dart';

class SkillsScreenVM extends GetxController {
  SkillsScreenVM() {
    setSkillsValue();
    setToolsValue();
  }

  // Define an observable variable for skills
  List<SkillsBO> skills = [
    SkillsBO(stack: '', assetPath: ''),
  ].obs; // ".obs" makes it observable

  // Define an observable variable for productivity tools
  List<SkillsBO> productivityTools = [
    SkillsBO(stack: '', assetPath: ''),
  ].obs; // ".obs" makes it observable

  // Set value for skills list
  void setSkillsValue() {
    skills = [
      SkillsBO(
        stack: 'Flutter',
        assetPath: 'lib/Resources/Images/SkillsImages/Flutter.png',
      ),
      SkillsBO(
        stack: 'Firebase',
        assetPath: 'lib/Resources/Images/SkillsImages/Firebase.png',
      ),
      SkillsBO(
        stack: 'MySQL',
        assetPath: 'lib/Resources/Images/SkillsImages/MySql.png',
      ),
      SkillsBO(
        stack: 'PHP',
        assetPath: 'lib/Resources/Images/SkillsImages/PHP.png',
      ),
      SkillsBO(
        stack: 'WordPress',
        assetPath: 'lib/Resources/Images/SkillsImages/WordPress.png',
      ),
      SkillsBO(
        stack: 'Node JS',
        assetPath: 'lib/Resources/Images/SkillsImages/NodeJS.png',
      ),
      SkillsBO(
        stack: 'C#',
        assetPath: 'lib/Resources/Images/SkillsImages/C#.png',
      ),
      SkillsBO(
        stack: 'Xamarin Forms',
        assetPath: 'lib/Resources/Images/SkillsImages/Xamarin.png',
      ),
      SkillsBO(
        stack: 'ASP .NET',
        assetPath: 'lib/Resources/Images/SkillsImages/DotNet.png',
      ),
      SkillsBO(
        stack: '.NET MAUI',
        assetPath: 'lib/Resources/Images/SkillsImages/MAUI.png',
      ),
      SkillsBO(
        stack: 'Git',
        assetPath: 'lib/Resources/Images/SkillsImages/GitHub.png',
      ),
      SkillsBO(
        stack: 'TFS',
        assetPath: 'lib/Resources/Images/SkillsImages/TFS.png',
      ),
      SkillsBO(
        stack: 'MongoDB',
        assetPath: 'lib/Resources/Images/SkillsImages/MongoDB.png',
      ),
    ];
  }

  // Set value for tools list
  void setToolsValue() {
    productivityTools = [
      SkillsBO(
        stack: 'Visual Studio Code',
        assetPath: 'lib/Resources/Images/SkillsImages/VSCode.png',
      ),
      SkillsBO(
        stack: 'Visual Studio',
        assetPath: 'lib/Resources/Images/SkillsImages/VisualStudio.png',
      ),
      SkillsBO(
        stack: 'Android Studio',
        assetPath: 'lib/Resources/Images/SkillsImages/AndroidStudio.png',
      ),
      SkillsBO(
        stack: 'XCode',
        assetPath: 'lib/Resources/Images/SkillsImages/Xcode.png',
      ),
      SkillsBO(
        stack: 'GitHub',
        assetPath: 'lib/Resources/Images/SkillsImages/GitHub.png',
      ),
      SkillsBO(
        stack: 'Postman',
        assetPath: 'lib/Resources/Images/SkillsImages/Postman.png',
      ),
    ];
  }
}
