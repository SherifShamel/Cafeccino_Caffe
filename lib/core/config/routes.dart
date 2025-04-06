import 'package:caffecino/core/config/page_route_names.dart';
import 'package:caffecino/presentaion/login_feature/login_page.dart';
import 'package:caffecino/presentaion/register_feature/register_page.dart';
import 'package:flutter/material.dart';

class Routes{
  static Route<dynamic> onGenerateRoute(RouteSettings settings) {
    switch (settings.name) {
      case PageRouteName.initial:
        return MaterialPageRoute(builder: (context) => LoginPage(),);

        case PageRouteName.register:
        return MaterialPageRoute(builder: (context) => RegisterPage(),);

      default: return MaterialPageRoute(builder: (context) => LoginPage(),);
    }
  }
}