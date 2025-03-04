import 'package:my_portfolio_app/BOs/ProjectsBO/ProjectsBO.dart';
import 'package:get/get.dart';

class ProjectsScreenVM extends GetxController {
  ProjectsScreenVM() {
    setWorksValue();
  }
  // Define an observable variable
  List<ProjectsBO> works = [
    ProjectsBO(
      title: "",
      logo: "",
      aboutProject: "",
      techStack: "",
      techStackLogo: "",
      technologiesUsed: "",
      description: [],
      playStoreLink: "",
      appStoreLink: "",
      webSiteLink: "",
    ),
  ].obs; // ".obs" makes it observable

  // Observable variable for hover effect
  RxBool isHover = false.obs;
  RxInt hoverIndex = (-1).obs;

  // Set value for works list
  void setWorksValue() {
    try {
      works = [
        ProjectsBO(
          title: "Herse",
          logo: "",
          aboutProject:
              'An Internal health goal management mobile app for tracking daily health goals, supporting both Tamil and English languages, with online and offline functionality. It serves as a watch companion app, retrieving data from the watch when connected, or from the mobile sensor when not.',
          techStack: 'Flutter mobile app',
          techStackLogo: 'lib/Resources/Images/SkillsImages/Flutter.png',
          technologiesUsed: "Flutter, Firebase, Android, iOS, Bloc, TFS",
          description: [
            "Built a health-tracking mobile app using Flutter, integrating AWS Amplify for authentication and Spotify SDK for music streaming.",
            "Transferred data between Android and iOS watch apps to the Flutter mobile app and vice versa using Flutter method channels and event channels.",
            "Worked on integrating native Spotify SDKs for both Android and iOS platforms to enable music control and playback.",
            "Designed and implemented secure communication for health data syncing between the app and wearable devices.",
            "Collaborated with HealthKit and HealthConnect APIs to offer users seamless tracking of their health activities.",
            "Worked with the backend team to ensure smooth data synchronization and robust storage for user health information.",
            "Focused on performance optimization, minimizing battery consumption during health data transfers.",
          ],
          playStoreLink: "",
          appStoreLink: "",
          webSiteLink: "",
        ),
        ProjectsBO(
          title: "Appify Templates",
          logo: "",
          aboutProject:
              'An internal project aimed at streamlining and speeding up UI development by creating a set of reusable Flutter UI components, ensuring consistency and efficiency across various app development projects.',
          techStack: 'Flutter mobile app',
          techStackLogo: 'lib/Resources/Images/SkillsImages/Flutter.png',
          technologiesUsed:
              "Flutter, Firebase, Node JS, MySQL, MongoDB, Git, MVVM, MobX, GetX, Provider, Bloc",
          description: [
            "Developed a variety of UI templates, including customized bottom navigation bars, popups, and login screens with biometric authentication.",
            "Implemented various functionalities, including Firebase Authentication, Push Notifications, Analytics, Crashlytics, Firestore Database, AdMob, Google Maps, and AWS Cognito Authentication. Additionally, integrated secure storage solutions, local databases such as Hive, SQLite, and SharedPreferences, as well as localization support. Developed state management solutions and incorporated features like image and file pickers, audio recording, and more to enhance app functionality and user experience.",
            "Enhanced UI responsiveness and ensured smooth transitions between different app screens.",
            "Created highly reusable and maintainable components that reduced the overall project development time.",
            "Coordinated with UI/UX designers to ensure templates were fully responsive and adaptable across different device types.",
            "Applied state management techniques to maintain real-time UI changes with minimal re-rendering.",
          ],
          playStoreLink: "",
          appStoreLink: "",
          webSiteLink: "",
        ),
        ProjectsBO(
          title: "NextCare AnyWhere",
          logo: "",
          aboutProject:
              'A US-based healthcare application for booking doctor appointments, available on both mobile and web apps. Backend services were developed to manage appointments, user data, and secure transactions, with a focus on efficiency and data protection.',
          techStack: 'WordPress REST API service',
          techStackLogo: 'lib/Resources/Images/SkillsImages/WordPress.png',
          technologiesUsed:
              "WordPress, PHP, MySQL, PhpMyAdmin, Auth0, Firebase",
          description: [
            "Solely handled backend services across four platforms, managing tasks such as API integration and database operations using PHP and MySQL.",
            "Developed CRON jobs for handling scheduled processes, including email notifications and data backups.",
            "Implemented symmetric and asymmetric encryption to securely store and manage sensitive user insurance information.",
            "Integrated third-party APIs for appointment scheduling, insurance verification, and medical record management.",
            "Worked on JWT authentication and authorization for secure verification of users and healthcare providers.",
            "Created WordPress Custom Post Types (CPT) to manage clinic and doctor information through WordPress CMS.",
            "Ensured seamless data flow between the backend and the mobile frontend, optimizing for both performance and security.",
          ],
          playStoreLink:
              "https://play.google.com/store/apps/details?id=com.nextcare.health&hl=en_IN",
          appStoreLink:
              "https://apps.apple.com/us/app/nextcare-anywhere/id1629290318",
          webSiteLink: "https://nextcare.com/nextcare-app/",
        ),
        ProjectsBO(
          title: "Angels On Call (SVdP)",
          logo: "",
          aboutProject:
              'A US-based money donar application that allows users to donate to those in need. It supports secure transactions and offers a user-friendly interface for managing donations.',
          techStack: 'Xamarin mobile app',
          techStackLogo: 'lib/Resources/Images/SkillsImages/Xamarin.png',
          technologiesUsed: "Xamarin, C#, WordPress, PHP, MySQL, PhpMyAdmin",
          description: [
            "Worked on both the backend and frontend, ensuring efficient communication between the app and the server.",
            "Implemented secure user authentication and payment processing using Xamarin and PHP.",
            "Collaborated with the design team to implement visually appealing and responsive UI/UX elements, based on client requirements.",
            "Managed the entire project lifecycle, from requirement gathering with the client to app deployment and post-launch support.",
            "Optimized the donation process by integrating payment gateways and ensuring fast, secure transactions.",
            "Applied MVVM architecture to maintain a clean and maintainable codebase.",
            "Developed the app's analytics module, providing real-time data on donation trends and user engagement.",
          ],
          playStoreLink:
              "https://play.google.com/store/apps/details?id=com.svdp.mobile&hl=en",
          appStoreLink:
              "https://apps.apple.com/us/app/svdp-angels-on-call/id1631122190",
          webSiteLink: "https://angelsoncall.stvincentdepaul.net/",
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
