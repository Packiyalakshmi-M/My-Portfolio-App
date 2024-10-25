import 'package:my_portfolio_app/BOs/WorkBO/WorkBO.dart';
import 'package:get/get.dart';

class WorksScreenVM extends GetxController {
  WorksScreenVM() {
    setWorksValue();
  }
  // Define an observable variable
  List<WorkBO> works = [
    WorkBO(
      title: "",
      logo: "",
      description: "",
      techStack: "",
      gitHubLink: '',
      isExpanded: false,
      techStackLogo: '',
      technologiesUsed: '',
      bulletPoints: [''],
    ),
  ].obs; // ".obs" makes it observable

  // Observable variable for hover effect
  RxBool isHover = false.obs;
  RxInt hoverIndex = (-1).obs;

  // Set value for works list
  void setWorksValue() {
    try {
      works = [
        WorkBO(
          title: "My Portfolio",
          logo: "",
          description:
              "Developed a personal portfolio website to showcase my skills & experience by utilizing Flutter SDK.",
          techStack: "Flutter",
          gitHubLink: 'https://github.com/Packiyalakshmi-M/My-Portfolio-App',
          isExpanded: true,
          techStackLogo: 'lib/Resources/Images/SkillsImages/Flutter.png',
          technologiesUsed: 'Flutter, GetX, GitHub',
          bulletPoints: [
            "Developed a personal portfolio website using Flutter, showcasing skills and experience with a responsive UI.",
            "Implemented WebView functionality for opening external links in new tabs.",
            "Added PDF download feature for easy access to resume and other documents.",
            "Incorporated smooth animations and a theme switching mechanism that can be easily modified from a single source.",
            "Utilized GetX for efficient state management, ensuring seamless navigation and performance across the site.",
          ],
        ),
        WorkBO(
          title: "Todo App",
          logo: "",
          description:
              "Implemented todo application by utilizing firebase for authentication & integrated API for data manipulations.",
          techStack: "Flutter",
          gitHubLink: 'https://github.com/Packiyalakshmi-M/TodoApp',
          isExpanded: false,
          techStackLogo: 'lib/Resources/Images/SkillsImages/Flutter.png',
          technologiesUsed: 'Flutter, Firebase, GitHub',
          bulletPoints: [
            "Built a Todo application using Flutter, with user authentication managed via Firebase Authentication.",
            "Integrated a RESTful API to handle data manipulation and persistent storage of todo items.",
            "Designed and implemented a signup/signin feature using secure, real-time Firebase services.",
            "Created a user-friendly UI, allowing users to add, update, and delete todos with ease.",
            "Applied Flutter best practices to ensure app scalability, maintainability, and smooth performance.",
          ],
        ),
        WorkBO(
          title: "Secure Storage",
          logo: "",
          description:
              "Implemented secure storage feature with the simple login page by utilizing flutter secure storage library.",
          techStack: "Flutter",
          gitHubLink:
              'https://github.com/Packiyalakshmi-M/Flutter_Secure_Storage',
          isExpanded: false,
          techStackLogo: 'lib/Resources/Images/SkillsImages/Flutter.png',
          technologiesUsed: 'Flutter, GitHub',
          bulletPoints: [
            "Implemented secure storage functionality using the Flutter Secure Storage package to safeguard sensitive user data.",
            "Developed a user login screen, where users manually enter credentials (email and password) during the initial login.",
            "Once logged in, user credentials are securely stored locally, ensuring data protection and privacy.",
            "On subsequent app launches, prefilled credentials are retrieved from secure storage and automatically populated into the respective input fields.",
            "Applied best practices for security in Flutter, ensuring encrypted storage of user information and seamless login experience.",
          ],
        ),
        WorkBO(
          title: "Firebase Auth",
          logo: "",
          description:
              "Implemented user creation & login feature by utilizing flutter firebase authentication library.",
          techStack: "Flutter",
          gitHubLink:
              'https://github.com/Packiyalakshmi-M/Flutter-Firebase-App',
          isExpanded: false,
          techStackLogo: 'lib/Resources/Images/SkillsImages/Flutter.png',
          technologiesUsed: 'Flutter, Firebase, GitHub',
          bulletPoints: [
            "Implemented Firebase Authentication for signup, signin, and signout functionalities using Firebase Auth and Firebase Core packages for Android.",
            "Developed essential screens, including signup, signin, and a home screen, providing a seamless user experience.",
            "Enabled users to securely log in using email and password, with data verification handled by Firebase.",
            "Displayed user information on the home screen after login, allowing users to view their account details.",
            "Integrated a secure signout feature, enabling users to safely log out of the app and protect their session.",
          ],
        ),
        WorkBO(
          title: "State Management - Provider",
          logo: "",
          description:
              "Implemented increment counter app by utilizing the provider state management library.",
          techStack: "Flutter",
          gitHubLink:
              'https://github.com/Packiyalakshmi-M/Provider_State_Management',
          isExpanded: false,
          techStackLogo: 'lib/Resources/Images/SkillsImages/Flutter.png',
          technologiesUsed: 'Flutter, Provider, GitHub',
          bulletPoints: [
            "Implemented the increment counter logic using Provider to efficiently separate business logic from UI, following a more structured approach.",
            "Utilized Provider's context-based state management to update the UI and handle state changes efficiently without compromising app performance.",
            "Ensured a scalable architecture by leveraging Provider's capabilities, making the state management more maintainable for larger applications.",
          ],
        ),
        WorkBO(
          title: "State Management - MobX",
          logo: "",
          description:
              "Implemented increment counter app by utilizing the mobx state management library.",
          techStack: "Flutter",
          gitHubLink:
              'https://github.com/Packiyalakshmi-M/Mobx_State_Management',
          isExpanded: false,
          techStackLogo: 'lib/Resources/Images/SkillsImages/Flutter.png',
          technologiesUsed: 'Flutter, MobX, GitHub',
          bulletPoints: [
            "Modified the increment counter feature using MobX, adopting a reactive programming approach to manage state and logic updates.",
            "Ensured a real-time UI update with MobX's observable and computed properties, providing a dynamic and responsive interface.",
            "Streamlined state handling by using MobX's simple and clear state management, ensuring better maintainability and code readability.",
          ],
        ),
        WorkBO(
          title: "State Management - GetX",
          logo: "",
          description:
              "Implemented increment counter app by utilizing the getx state management library.",
          techStack: "Flutter",
          gitHubLink:
              'https://github.com/Packiyalakshmi-M/GetX_State_Management',
          isExpanded: false,
          techStackLogo: 'lib/Resources/Images/SkillsImages/Flutter.png',
          technologiesUsed: 'Flutter, GetX, GitHub',
          bulletPoints: [
            "Implemented the increment counter feature using GetX for state management, achieving seamless and efficient state updates with minimal boilerplate code.",
            "Utilized GetX's reactive state management to automatically update the UI when the counter value changes, ensuring smooth user interaction.",
            "Enhanced app performance by leveraging GetX's lightweight architecture, reducing memory usage and increasing responsiveness.",
          ],
        ),
        WorkBO(
          title: "User Management - REST API",
          logo: "",
          description:
              "Implemented API services using Node JS, express and MongoDB",
          techStack: "Node JS API",
          gitHubLink: 'https://github.com/Packiyalakshmi-M/User-Management-API',
          isExpanded: false,
          techStackLogo: 'lib/Resources/Images/SkillsImages/NodeJS.png',
          technologiesUsed: 'Node JS, Express, MongoDB, GitHub',
          bulletPoints: [
            "Built a User Management API using Node.js and Express, enabling CRUD operations such as create, update, retrieve (by ID and all users), and delete.",
            "Integrated MongoDB as the database for managing user data, ensuring efficient storage and retrieval of user information.",
            "Structured the API with RESTful principles, providing a robust and scalable solution for user management.",
          ],
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
