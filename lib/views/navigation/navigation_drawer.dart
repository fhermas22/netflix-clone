import 'package:flutter/material.dart';
import '../../constants/app_images.dart';
import '../../routes/app_routes.dart';
import '../../theme/app_colors.dart';

class NavigationDrawer extends StatelessWidget {
  const NavigationDrawer({super.key});

  @override
  Widget build(BuildContext context) => Drawer(
    backgroundColor: AppColors.drawerBackground,
    child: SingleChildScrollView(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          buildHeader(context),
          buildMenuItems(context)
        ],
      ),
    ),
  );

  Widget buildHeader(BuildContext context) => Container(
    color: AppColors.card,
    padding: EdgeInsets.only(
        top: 24 + MediaQuery.of(context).padding.top,
        bottom: 24
    ),
    child: Column(
      children: [
        FadeInImage(
            width: 150,
            placeholder: AssetImage("assets/images/netflix_logo/netflix-logo-full.png"),
            image: AssetImage(
              AppImages.simpleLogo,
            )
        )
      ],
    ),
  );

  Widget buildMenuItems(BuildContext context) => Container(
    padding: const EdgeInsets.all(24),
    child: Wrap(
      runSpacing: 16,
      children: [
        ListTile(
          leading: const Icon(
            Icons.home_outlined,
            color: AppColors.iconDefault,
          ),
          title: const Text(
            'Acceuil',
            style: TextStyle(
                color: AppColors.textSecondary
            ),
          ),
          onTap: () {
            Navigator.pushReplacementNamed(
                context, AppRoutes.home
            );
          },
        ),
        /*ListTile(
          leading: const Icon(
            Icons.person,
            color: AppColors.iconDefault,
          ),
          title: const Text(
            'Profil',
            style: TextStyle(
                color: AppColors.textSecondary
            ),
          ),
          onTap: () {
            Navigator.pushReplacementNamed(
                context, AppRoutes.profileScreen
            );
          },
        ),*/
        ListTile(
          leading: const Icon(
            Icons.info_outlined,
            color: AppColors.iconDefault,
          ),
          title: const Text(
            'À propos',
            style: TextStyle(
                color: AppColors.textSecondary
            ),
          ),
          onTap: () {},
        ),
        const Divider(color: AppColors.divider),
        ListTile(
          iconColor: AppColors.iconDefault,
          textColor: AppColors.buttonText,
          splashColor: AppColors.redNetflix,
          leading: const Icon(
            Icons.logout_outlined,
            color: AppColors.iconDefault,
          ),
          title: const Text('Se deconnecter'),
          onTap: () {
            Navigator.pop(context);
          },
        ),
      ],
    ),
  );
}