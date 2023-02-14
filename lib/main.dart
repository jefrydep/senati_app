import 'package:flutter/material.dart';
import 'package:tudoctor_app/features/router/app_routes.dart';

void main(List<String> args) {
  runApp(const MyApp());


}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      // initialRoute: 'login',
      // routes: {
        
      //   'home':(context) => const HomeView(),
      //   'login':(context) => const LoginView()
      // },
      initialRoute: AppRoutes.initialRoute,
      routes: AppRoutes.getAppRoutes(),
      // onGenerateRoute: AppRoutes.onGenerateRoute,

    );
  }
}