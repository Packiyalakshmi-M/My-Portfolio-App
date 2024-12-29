import 'package:flutter/material.dart';
// import 'package:my_portfolio_app/Helpers/AppConstants/AppConstants.dart';
// import 'package:my_portfolio_app/Helpers/ResponsiveUI.dart';
import 'package:my_portfolio_app/Helpers/Utilities/Utilities.dart';
import 'package:my_portfolio_app/Pages/RootScreen/RootScreen.dart';

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    checkPlatform();
    // ResponsiveUI.baseHeight = AppConstants.baseHeight;
    // ResponsiveUI.baseWidth = AppConstants.baseWidth;
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: RootScreen(),
    );
  }
}
