import 'package:caffecino/core/config/page_route_names.dart';
import 'package:caffecino/core/config/routes.dart';
import 'package:caffecino/presentaion/login_feature/login_page.dart';
import 'package:flutter/material.dart';

import 'core/constants.dart';


GlobalKey<NavigatorState> navigatorKey = GlobalKey<NavigatorState>();

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      initialRoute: PageRouteName.initial,
      onGenerateRoute: Routes.onGenerateRoute,
      navigatorKey: navigatorKey,
    );
  }
}