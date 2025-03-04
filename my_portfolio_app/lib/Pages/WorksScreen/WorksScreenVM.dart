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
          title: "E-Commerce App",
          logo: "",
          description:
              "Developed an E-Commerce app that displays products in a grid layout and allows users to add them to a cart, leveraging Bloc for state management and Hive for local storage.",
          techStack: "Flutter",
          gitHubLink: 'https://github.com/Packiyalakshmi-M/ecommerce_app',
          isExpanded: false,
          techStackLogo: 'lib/Resources/Images/SkillsImages/Flutter.png',
          technologiesUsed: 'Flutter, BLoC, Hive, Dio, GetIt, GitHub',
          bulletPoints: [
            "Implemented Product Listing with a grid layout, displaying product images, titles, prices, and categories.",
            "Developed Cart Management with add, remove, and quantity update functionalities using BLoC state management.",
            "Integrated Dio for API calls, fetching product data from a REST API and mapping it to ProductBO models.",
            "Implemented Hive local storage to persist cart data even after app restarts, ensuring seamless user experience.",
            "Designed a structured folder architecture for scalability, including BLoC for state management, services for API and local storage, and UI components.",
            "Optimized total price calculation in the cart screen, ensuring real-time updates as users modify product quantities.",
          ],
        ),
        WorkBO(
          title: "Car Speed Monitor App",
          logo: "",
          description:
              "Developed a Car Speed Monitor app that simulates real-time speed tracking of two cars, leveraging BLoC for efficient state management and dynamic UI updates.",
          techStack: "Flutter",
          gitHubLink: 'https://github.com/Packiyalakshmi-M/car_speed_monitor',
          isExpanded: false,
          techStackLogo: 'lib/Resources/Images/SkillsImages/Flutter.png',
          technologiesUsed: 'Flutter, BLoC, Dart Math, Git',
          bulletPoints: [
            "Implemented Real-time Speed Simulation where two car speeds update dynamically every second.",
            "Utilized BLoC State Management for efficient handling of speed updates and UI changes.",
            "Developed a Speed Alert Mechanism that changes text color to red when the speed exceeds 100 km/hr.",
            "Leveraged Dart Math Library for random speed generation within a realistic range.",
            "Designed a lightweight and scalable architecture for smooth cross-platform performance.",
          ],
        ),
        WorkBO(
          title: "Currency Converter App",
          logo: "",
          description:
              "Developed a Currency Converter app that allows users to convert currency from one unit to another using real-time exchange rates. The app follows the MVVM architecture and utilizes GetX for state management.",
          techStack: "Flutter",
          gitHubLink:
              'https://github.com/Packiyalakshmi-M/currency_converter_app',
          isExpanded: false,
          techStackLogo: 'lib/Resources/Images/SkillsImages/Flutter.png',
          technologiesUsed: 'Flutter, Dart, GetX, GetIt, HTTP API, Git',
          bulletPoints: [
            "Implemented Real-time Currency Conversion using an external API to fetch live exchange rates.",
            "Followed MVVM Architecture to ensure a structured and maintainable codebase.",
            "Utilized GetX State Management for efficient UI updates and data handling.",
            "Integrated GetIt for Dependency Injection, improving code scalability and testability.",
            "Developed an API Service Layer using the HTTP package to communicate with the exchange rate API.",
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
          title: "Firebase Authentication",
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
          title: "Biometric Authentication",
          logo: "",
          description:
              "Implemented biometric login feature by utilizing flutter local_auth library.",
          techStack: "Flutter",
          gitHubLink:
              'https://github.com/Packiyalakshmi-M/Flutter-Biometric-Auth',
          isExpanded: false,
          techStackLogo: 'lib/Resources/Images/SkillsImages/Flutter.png',
          technologiesUsed: 'Flutter, Local auth, GitHub',
          bulletPoints: [
            "Implemented biometric authentication using the local_auth package to enable secure fingerprint and face recognition login.",
            "Integrated dynamic UI that displays available authentication methods based on the device's biometric capabilities.",
            "Configured platform-specific permissions and settings for Android and iOS to ensure seamless biometric functionality.",
          ],
        ),
        WorkBO(
          title: "Image Picker with BLoC",
          logo: "",
          description:
              "Implemented an image selection feature using Flutter's image_picker package, structured with BLoC state management and dependency injection.",
          techStack: "Flutter",
          gitHubLink:
              'https://github.com/Packiyalakshmi-M/flutter_native_communicator',
          isExpanded: false,
          techStackLogo: 'lib/Resources/Images/SkillsImages/Flutter.png',
          technologiesUsed: 'Flutter, BLoC, Get_it, Image Picker, GitHub',
          bulletPoints: [
            "Implemented image selection from the gallery and camera using the image_picker package, ensuring smooth user interaction.",
            "Utilized BLoC state management to handle UI state updates efficiently for a responsive and maintainable architecture.",
            "Separated business logic and UI by structuring the app with an ImagePickerService implementing the IImagePickerService interface.",
            "Used the get_it package for dependency injection, promoting modular and testable code architecture.",
            "Encapsulated image source selection within a custom bottom sheet for a user-friendly and reusable design component.",
            "Handled edge cases, such as null selections and permission checks, to enhance app stability.",
          ],
        ),
        WorkBO(
          title: "State Management - BLoC",
          logo: "",
          description:
              "Implemented an increment and decrement counter app using the BLoC state management library for efficient state handling.",
          techStack: "Flutter",
          gitHubLink:
              'https://github.com/Packiyalakshmi-M/Bloc_State_Management',
          isExpanded: false,
          techStackLogo: 'lib/Resources/Images/SkillsImages/Flutter.png',
          technologiesUsed: 'Flutter, BLoC, GitHub',
          bulletPoints: [
            "Implemented increment and decrement counter functionality using the BLoC state management approach to efficiently separate business logic from UI.",
            "Utilized Bloc for simplified state management, ensuring a reactive and structured approach to state updates.",
            "Leveraged BLoC's event-driven architecture to manage counter events and state changes seamlessly.",
            "Ensured scalability and maintainability by structuring the app with BLoC's clean separation of concerns.",
            "Improved performance by eliminating unnecessary widget rebuilds and ensuring efficient state propagation across the application.",
          ],
        ),
        WorkBO(
          title: "Battery Percentage via Platform Channels",
          logo: "",
          description:
              "Implemented battery percentage retrieval using Flutter platform channels to communicate between Dart and native Android code.",
          techStack: "Flutter",
          gitHubLink:
              'https://github.com/YourGitHubUsername/battery_percentage_app',
          isExpanded: false,
          techStackLogo: 'lib/Resources/Images/SkillsImages/Flutter.png',
          technologiesUsed:
              'Flutter, Platform Channels, Kotlin, MethodChannel, GitHub',
          bulletPoints: [
            "Implemented Flutter platform channels to fetch battery percentage from native Android using Kotlin.",
            "Created a MethodChannel to enable communication between Flutter and the Android native layer.",
            "Used the Android BatteryManager API to retrieve the battery percentage in Kotlin.",
            "Handled method calls and responses to ensure smooth interaction between Flutter and the native platform.",
            "Implemented error handling for cases where battery information is unavailable.",
            "Ensured seamless integration of platform-specific functionality while maintaining a Flutter-first approach.",
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
