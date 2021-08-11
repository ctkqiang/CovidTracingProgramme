import 'package:covid_tracing_programme_demo/constant/constant.dart';
import 'package:flutter/material.dart';
import 'package:qr_flutter/qr_flutter.dart';

class Profile extends StatefulWidget {
  @override
  _ProfileState createState() => _ProfileState();
}

class _ProfileState extends State<Profile> {
  Constant constant = Constant();
  String data = "AAAAAAAAAAAAAAAAAAAAAAAAAAAAAA1DDDDDDDS235234234234";

  @override
  Widget build(BuildContext context) {
    QrImage qrImage = QrImage(
      data: data,
      version: QrVersions.auto,
      embeddedImageStyle: QrEmbeddedImageStyle(color: constant.main),
      size: 200.0,
      eyeStyle: QrEyeStyle(color: constant.main),
      dataModuleStyle: QrDataModuleStyle(color: constant.main),
      gapless: true,
      constrainErrorBounds: true,
    );

    return Scaffold(
      body: SafeArea(
        child: Column(
          children: <Widget>[qrImage],
        ),
      ),
    );
  }
}
