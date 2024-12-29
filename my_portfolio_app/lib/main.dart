import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:my_portfolio_app/App.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();

  // Lock the orientation to portrait mode
  await SystemChrome.setPreferredOrientations([
    DeviceOrientation.landscapeLeft,
    DeviceOrientation.landscapeRight,
  ]);
  runApp(const App());
}
