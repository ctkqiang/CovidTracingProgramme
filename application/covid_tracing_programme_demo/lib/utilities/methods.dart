import 'package:covid_tracing_programme_demo/constant/constant.dart';
import 'package:covid_tracing_programme_demo/constant/log_level.dart';
import 'package:flutter/foundation.dart';

class Utilities extends Constant {
  Utilities();

  // static void set(String t) {
  //   switch (t) {
  //     case "/log":

  //   }
  // }

  static LogLevel valueOf(String value) {
    return LogLevel.values.where((element) {
      return describeEnum(element) == value;
    }).first;
  }
}
