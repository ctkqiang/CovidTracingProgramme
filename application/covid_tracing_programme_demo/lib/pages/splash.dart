import 'dart:async';

import 'package:covid_tracing_programme_demo/constant/constant.dart';
import 'package:covid_tracing_programme_demo/widgets/logo.dart';
import 'package:flutter/material.dart';

class SplashPage extends StatefulWidget {
  @override
  _SplashPageState createState() {
    return _SplashPageState();
  }
}

class _SplashPageState extends State<SplashPage> {
  Constant constant = new Constant();

  void initState() {
    super.initState();

    Timer(Duration(seconds: constant.splashscreen), () {
      return Navigator.pushNamed(context, "/application");
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            applogo(context),
            Text("Covid-19 Tracing Programme"),
          ],
        ),
      ),
    );
  }
}
