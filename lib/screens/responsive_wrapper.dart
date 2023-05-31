import 'package:flutter/material.dart';
import 'package:hyperhire_assignment/responsive/responsive_layout.dart';
import 'package:hyperhire_assignment/screens/home_screen_desktop.dart';
import 'package:hyperhire_assignment/screens/home_screen_mobile.dart';

class ResponsiveWrapper extends StatelessWidget {
  const ResponsiveWrapper({super.key});

  @override
  Widget build(BuildContext context) {
    return const SafeArea(
      child: Scaffold(
        body: ResponsiveLayout(
          mobileBody: HomeScreenMobile(),
          desktopBody: HomeScreenDesktop(),
        ),
      ),
    );
  }
}
