import 'package:flutter/material.dart';
import 'package:tudoctor_app/features/router/app_routes.dart';
import 'package:tudoctor_app/features/views/tapbar_view.dart';

void main(List<String> args) {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,

      // initialRoute: 'login',
      // routes: {

      //   'home':(context) => const HomeView(),
      //   'login':(context) => const LoginView()
      // },
      initialRoute: AppRoutes.initialRoute,
      routes: AppRoutes.getAppRoutes(),
      theme: ThemeData(useMaterial3: true),
      // onGenerateRoute: AppRoutes.onGenerateRoute,
    );
  }
}
