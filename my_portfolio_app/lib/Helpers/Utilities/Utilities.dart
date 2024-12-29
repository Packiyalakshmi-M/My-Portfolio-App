// ignore_for_file: unnecessary_this

import 'package:flutter/foundation.dart';
import 'package:my_portfolio_app/Helpers/AppConstants/AppConstants.dart';
import 'package:my_portfolio_app/Helpers/ResponsiveUI.dart';
import 'package:url_launcher/url_launcher_string.dart';

import 'dart:html' as html;

bool isMobileBrowser() {
  // Check the user agent for mobile-specific keywords
  final userAgent = html.window.navigator.userAgent.toLowerCase();
  return userAgent.contains('iphone') ||
      userAgent.contains('android') ||
      userAgent.contains('ipad');
}

bool isDesktopBrowser() {
  // Check for desktop-related keywords
  final userAgent = html.window.navigator.userAgent.toLowerCase();
  return userAgent.contains('windows') ||
      userAgent.contains('macintosh') ||
      userAgent.contains('linux');
}

void checkPlatform() {
  if (kIsWeb) {
    if (isMobileBrowser()) {
      print('Running on Mobile Chrome');
      ResponsiveUI.baseHeight = AppConstants.mblBaseHeight;
      ResponsiveUI.baseWidth = AppConstants.mblBaseWidth;
    } else if (isDesktopBrowser()) {
      print('Running on Windows/Mac/Linux Chrome');
      ResponsiveUI.baseHeight = AppConstants.baseHeight;
      ResponsiveUI.baseWidth = AppConstants.baseWidth;
    } else {
      print('Running on an unrecognized platform');
      ResponsiveUI.baseHeight = AppConstants.baseHeight;
      ResponsiveUI.baseWidth = AppConstants.baseWidth;
    }
  } else {
    print('Not running on the web');
  }
}

extension ExceptionalHandling on Object {
  void logException() {
    try {
      debugPrint('*========== Exception ==========*');
      debugPrint(this.toString());
      debugPrint('*========== Exception ==========*');
    } catch (exception) {
      debugPrint('*========== Exception ==========*');
      debugPrint(exception.toString());
      debugPrint('*========== Exception ==========*');
    }
  }
}

class Utilities {
  static void launchWebUrl({required String url}) async {
    try {
      await launchUrlString(url);
    } catch (ex) {
      print("Exception: ${ex.toString()}");
    }
  }
}
