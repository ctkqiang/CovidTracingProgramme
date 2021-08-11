import 'package:covid_tracing_programme_demo/constant/constant.dart';
import 'package:covid_tracing_programme_demo/pages/home.dart';
import 'package:covid_tracing_programme_demo/pages/profile.dart';
import 'package:covid_tracing_programme_demo/widgets/appbar.dart';
import 'package:flutter/material.dart';

class Application extends StatefulWidget {
  @override
  _ApplicationState createState() => _ApplicationState();
}

class _ApplicationState extends State<Application> {
  Constant constant = Constant();
  int userstate = 1;
  int currentIndex = 0;

  Color colour;

  List<Widget> children = <Widget>[Home(), Profile()];

  @override
  void initState() {
    super.initState();

    setState(() {
      if (userstate == 1) {
        colour = constant.main;
      } else {
        colour = constant.error;
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    BottomNavigationBar bottomNavigationBar = BottomNavigationBar(
      type: BottomNavigationBarType.fixed,
      onTap: (index) {
        setState(() {
          currentIndex = index;
        });
      },
      showSelectedLabels: true,
      showUnselectedLabels: true,
      currentIndex: currentIndex,
      selectedLabelStyle: TextStyle(color: colour),
      unselectedLabelStyle: TextStyle(color: colour),
      items: <BottomNavigationBarItem>[
        BottomNavigationBarItem(
          icon: Icon(Icons.home, color: colour),
          label: "Home",
          activeIcon: Icon(Icons.home, color: colour),
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.qr_code, color: colour),
          label: "Profile",
          activeIcon: Icon(Icons.qr_code, color: colour),
        ),
      ],
    );

    return Scaffold(
      appBar: appbar(context, colour),
      bottomNavigationBar: Theme(
        child: bottomNavigationBar,
        data: Theme.of(context).copyWith(
          textTheme: Theme.of(context).textTheme.copyWith(
                caption: new TextStyle(
                  color: colour,
                ),
              ),
        ),
      ),
      body: children[currentIndex],
    );
  }
}
