import 'package:flutter/material.dart';
import 'package:flutter_web_app/locator.dart';
import 'package:flutter_web_app/router/router_generator.dart';
import 'package:flutter_web_app/services/navigation_services.dart';
import 'package:flutter_web_app/ui/layout/main_layout_page.dart';

void main() {
  setupLocator();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Rutas app',
      initialRoute: '/stateful',
      onGenerateRoute: RouteGenerator.generateRoute,
      navigatorKey: locator<NavigationService>().navigatorKey,
      builder: ( _, child) {
        return MainLayoutPage(
          child: child ?? Container(),
        );
      } ,
    );
  }
}