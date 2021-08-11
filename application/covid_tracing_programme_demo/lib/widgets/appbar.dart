import 'package:covid_tracing_programme_demo/constant/constant.dart';
import 'package:flutter/material.dart';

Constant constant = Constant();

Widget appbar(BuildContext context, Color colour) {
  void navigateProfile(BuildContext context) {
    Navigator.pushNamed(context, "/profile");
  }

  return AppBar(
    centerTitle: true,
    title: Text(constant.appname),
    leading: null,
    backgroundColor: colour,
    automaticallyImplyLeading: false,
  );
}
