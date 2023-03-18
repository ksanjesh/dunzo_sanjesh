import 'package:danzo_clone/constants/my_routes.dart';
import 'package:danzo_clone/details_screen.dart';
import 'package:danzo_clone/home_screen.dart';
import 'package:danzo_clone/splashScreen.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    initialRoute: MyRoutes.initial,
    routes: {
      MyRoutes.initial: (context) => const SplashScreen(),
      MyRoutes.homeScreenRoutes: (context) => const HomeScreen(),
      MyRoutes.detailsScreenRoutes: (context) => const DetailsScreen()
    },
  ));
}
