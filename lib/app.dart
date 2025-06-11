import 'package:flutter/material.dart';
import 'package:netflix_clone/routes/app_routes.dart';
import 'package:netflix_clone/theme/app_colors.dart';
import 'package:netflix_clone/views/home.dart';
import 'package:netflix_clone/views/home_screen.dart';
import 'package:netflix_clone/views/movie_details.dart';
import 'package:netflix_clone/views/profile_screen.dart';
import 'package:netflix_clone/views/search_screen.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Netflix Clone',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        scaffoldBackgroundColor: AppColors.scaffoldBackground,
        appBarTheme: AppBarTheme(
          backgroundColor: AppColors.appBar,
          titleTextStyle: TextStyle(
            color: AppColors.textPrimary,
            fontSize: 20
          )
        ),
        textTheme: TextTheme(
          bodyLarge: TextStyle(
            color: AppColors.textPrimary
          ),
          bodyMedium: TextStyle(
            color: AppColors.textSecondary
          )
        )
      ),
      initialRoute: AppRoutes.home,
      routes: {
        AppRoutes.home: (context) => NetflixHome(),
        // AppRoutes.movieDetails: (context) => MovieDetails(),
        AppRoutes.homeScreen: (context) => HomeScreen(),
        AppRoutes.searchScreen: (context) => SearchScreen(),
        AppRoutes.profileScreen: (context) => ProfileScreen()
      },
    );
  }
}