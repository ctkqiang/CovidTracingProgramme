import 'package:covid_tracing_programme_demo/constant/constant.dart';
import 'package:covid_tracing_programme_demo/pages/application.dart';
import 'package:covid_tracing_programme_demo/pages/splash.dart';
import 'package:flutter/material.dart';

Constant constant = Constant();

MaterialApp materialApp = MaterialApp(
  title: constant.appname,
  debugShowCheckedModeBanner: constant.isdebugmode,
  initialRoute: "/application",
  routes: <String, WidgetBuilder>{
    "/": (context) => SplashPage(),
    "/application": (context) => Application(),
  },
);

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();

  runApp(materialApp);
}
