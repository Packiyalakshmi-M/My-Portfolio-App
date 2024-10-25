// ignore_for_file: unnecessary_this

import 'package:flutter/foundation.dart';
import 'package:url_launcher/url_launcher_string.dart';

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
