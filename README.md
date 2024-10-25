# Flutter - My Portfolio App

This project is a personal portfolio website built using Flutter, designed to showcase my skills and experience in software development. The application features a clean, responsive UI and includes modern features such as WebView for external links, PDF download capabilities, smooth animations, and theme switching that can be easily modified through the single file. The app uses GetX for efficient state management, ensuring optimal performance across the site.

## Table of Contents

- [Features](#features)
- [Technologies Used](#technologies-used)
- [Folder Structure](#folder-structure)
- [Installation](#installation)
- [Usage](#usage)
- [License](#license)
- [Author](#author)

## Features

- **Responsive UI:** Optimized for different screen sizes and devices.
- **WebView Integration:** External links open in new browser tabs.
- **PDF Download:** Users can download the resume and other documents.
- **Smooth Animations:** Includes smooth animations for a better user experience.
- **Easy Theme Switching:** The theme can be easily modified by updating the AppColors.dart file.
- **State Management with GetX:** Ensures seamless performance and navigation.
- **SVG Support:** Used for high-quality vector images with the flutter_svg package.

## Technologies Used

- **Programming Language:** Dart
- **Framework:** Flutter
- **State Management Library:** get (GetX)
- **Others:**
  - Flutter SDK
  - Android Studio / Visual Studio Code for development
  - Git for version control

## Folder Structure

Here is an explanation of the key folders and files in the project:

- **BOs/:**

  - **{BOName}BO.dart:** Contains business objects which is used for creating custom data types for listview / carousel slider items.

- **Helpers:**

  - **AppConstants:**
    - **AppConstants.dart:** Contains constants used throughout the app like string literals.
  - **Reusables:** Houses reusable UI components that can be used across multiple pages.
    - **GradientText.dart:** Provides a gradient text widget.
  - **Utilities:** Helper files for utility functions.
    - **Utilities.dart:** Includes various utility functions.
  - **ResponsiveUI.dart:** Handles the responsiveness of the application for different screen sizes.

- **Pages:** Contains all the different screens of the portfolio.

  - **{ScreenName}Screen.dart:** UI logic.
  - **{ScreenName}ScreenVM.dart:** ViewModel for managing screen data and functionalities with GetX.

- **Resources:** Contains resources like colors, fonts, and images.

  - **AppColors:** Defines the color scheme used across the app, and can be easily modified for theme switching.
    - **AppColors.dart:** Centralized color definitions.
  - **Fonts:** Includes custom fonts used in the application.
    - **{FontName}.ttf:** Contains the font filewith the extension of .ttf
  - **Images:** Contains image assets such as logos and background images.

- **App.dart:** The main entry point for the application, which initializes the theme and navigation setup.

- **main.dart:** Starts the Flutter application.

## Installation

Follow these steps to get the project up and running locally:

```bash
# Clone the repository
git clone https://github.com/Packiyalakshmi-M/My-Portfolio-App

# Navigate into the project directory
cd my_portfolio_app

# Install dependencies
flutter pub get
```

## Usage

The following snippet shows the entry point for the application:

```
import 'package:flutter/material.dart';
import 'package:my_portfolio_app/Helpers/AppConstants/AppConstants.dart';
import 'package:my_portfolio_app/Helpers/ResponsiveUI.dart';
import 'package:my_portfolio_app/Pages/RootScreen/RootScreen.dart';

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    ResponsiveUI.baseHeight = AppConstants.baseHeight;
    ResponsiveUI.baseWidth = AppConstants.baseWidth;
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: RootScreen(),
    );
  }
}

```

## License

This project is open source and available under the MIT License.

## Author

- Packiyalakshmi Murugan
- [LinkedIn Link](https://www.linkedin.com/in/packiyalakshmi-m-7a9844210/)
- [Github link](https://github.com/Packiyalakshmi-M/)
