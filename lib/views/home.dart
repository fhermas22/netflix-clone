import 'package:flutter/material.dart';
import 'package:google_nav_bar/google_nav_bar.dart';
import 'package:netflix_clone/constants/app_images.dart';
import 'package:netflix_clone/theme/app_colors.dart';
import 'package:netflix_clone/views/home_screen.dart';
import 'package:netflix_clone/views/navigation/navigation_drawer.dart' as navigation_drawer;
import 'package:netflix_clone/views/profile_screen.dart';
import 'package:netflix_clone/views/search_screen.dart';

class NetflixHome extends StatefulWidget {
  const NetflixHome({super.key});

  @override
  State<NetflixHome> createState() => _NetflixHomeState();
}

class _NetflixHomeState extends State<NetflixHome> {
  int _selectedIndex = 0;
  final List<Widget> _screens = [
    HomeScreen(),
    SearchScreen(),
    ProfileScreen()
  ];

  @override
  void didChangeDependencies() {
    super.didChangeDependencies();

    precacheImage(
      AssetImage(AppImages.simpleLogo),
      context
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xFF141414),
        iconTheme: const IconThemeData(
          color: AppColors.iconDefault
        ),
        centerTitle: true,
        title: Image.asset(
          AppImages.fullLogo,
          height: 70,
        ),
        forceMaterialTransparency: true,
      ),
      drawer: const navigation_drawer.NavigationDrawer(),
      body: _screens[_selectedIndex],
      bottomNavigationBar: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 4, vertical: 1),
        child: GNav(
          style: GnavStyle.google,
          backgroundColor: AppColors.navBarBackground,
          color: AppColors.navBarInactiveColor,
          activeColor: AppColors.navBarActiveColor,
          tabBackgroundColor: AppColors.navBarTabBackground,
          curve: Curves.easeIn,
          tabBorderRadius: 20,
          iconSize: 24,
          gap: 8,
          padding: EdgeInsets.symmetric(horizontal: 18, vertical: 14),
          selectedIndex: _selectedIndex,
          onTabChange: (index) => setState(
               () => _selectedIndex = index
          ),
          tabs: const [
            GButton(
              icon: Icons.home,
              text: 'Acceuil',
            ),
            GButton(
              icon: Icons.search,
              text: 'Recherche',
            ),
            GButton(
              icon: Icons.person,
              text: 'Profil',
            )
          ]
        ),
      ),
    );
  }
}

