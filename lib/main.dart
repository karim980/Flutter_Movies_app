import 'package:flutter/material.dart';
import 'package:migliori_film/src/core/app_color.dart';
import 'package:migliori_film/src/presentation/screens/movies_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: MoviesScreen(),
      theme: ThemeData(
        primarySwatch: Colors.purple,
        scaffoldBackgroundColor: AppColors.backColor,
        textTheme: TextTheme(
          headline1: TextStyle(color: AppColors.whiteColor,fontSize: 27,fontWeight: FontWeight.w600),
          headline2: TextStyle(color: AppColors.whiteColor,fontSize: 20,fontWeight: FontWeight.w200),
          bodyText1: TextStyle(color: AppColors.yllColor,fontWeight: FontWeight.w300,fontSize: 16),
          bodyText2: TextStyle(color: AppColors.whiteColor,fontWeight: FontWeight.w300,fontSize: 16),
          subtitle1: TextStyle(color: AppColors.whiteColor,fontSize: 12),
        ),
      ),
    );
  }
}
