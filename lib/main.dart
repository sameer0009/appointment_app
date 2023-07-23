import 'package:appointment_app/main_layout.dart';
import 'package:appointment_app/screens/auth_page.dart';
import 'package:appointment_app/utils/Config.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  static final navigatorKey = GlobalKey<NavigatorState>();
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      navigatorKey: navigatorKey ,
      title: 'Flutter Doctor App',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        inputDecorationTheme: const InputDecorationTheme(
          focusColor: Config.primarycolor,
          border: Config.focusBorder,
          focusedBorder: Config.focusBorder,
          errorBorder: Config.errorBorder,
          enabledBorder: Config.outlinedBorder,
          floatingLabelStyle: TextStyle(color: Config.primarycolor),
          prefixIconColor: Colors.black38,

        ) ,

        scaffoldBackgroundColor: Colors.white,
        bottomNavigationBarTheme: BottomNavigationBarThemeData(
          backgroundColor: Config.primarycolor,
          selectedItemColor: Colors.white,
            showSelectedLabels: true,
          showUnselectedLabels: false,
          unselectedItemColor: Colors.grey.shade700,
          elevation: 10,
          type: BottomNavigationBarType.fixed,
        ),

      ),
      initialRoute: '/',
      routes: {
        '/':(context) => const AuthPage() ,
        'main':(context) => const MainLayout(),

      },

    );
  }
}




