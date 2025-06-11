import 'package:flutter/material.dart';

class AppColors {
  // === Fonds principaux === //
  // fond général
  static const Color scaffoldBackground = Color(0xFF1E1E1E);
  // fond AppBar
  static const Color appBar = Color(0xFF141414);
  // fond Drawer
  static const Color drawerBackground = Color(0xFF0F0F0F);
  // fond d’éléments survolés
  static const Color card = Color(0xFF2A2A2A);

  // === Textes === //
  // texte blanc
  static const Color textPrimary = Color(0xFFFFFFFF);
  // texte gris doux
  static const Color textSecondary = Color(0xFFB3B3B3);
  // optionnel : texte moins important
  static const Color textMuted = Color(0xFF888888);

  // === Icônes === //
  // icônes neutres
  static const Color iconDefault = Color(0xFFB3B3B3);
  // icônes actives
  static const Color iconSelected = Color(0xFFFFFFFF);
  // icônes transparentes
  static const Color iconTransparent = Color(0x77B3B3B3);

  // === Accents & Boutons === //
  // rouge Netflix
  static const Color redNetflix = Color(0xFFE50914);
  // rouge Netflix transparent
  static const Color redNetflixTransparent = Color(0xD8E50914);
  // fond bouton discret
  static const Color buttonBackground = Color(0xFF1E1E1E);
  // texte bouton déconnexion
  static const Color buttonText = redNetflix;

  // === Séparateurs & bordures === //
  // lignes, diviseurs
  static const Color divider = Color(0xFF333333);

  // === Hover ou fond de sélection === //
  static const Color hover = Color(0xFF2A2A2A);


  // === Bottom navigation bar === //
  // fond de la nav bar
  static const Color navBarBackground = Color(0xFF151515);
  // texte/icône actif (blanc)
  static const Color navBarActiveColor = Color(0xFFFFFFFF);
  // texte/icône inactif (gris doux)
  static const Color navBarInactiveColor = Color(0xFFB3B3B3);
  // surbrillance active (rouge Netflix)
  static const Color navBarTabBackground = Color(0xFFE50914);
}