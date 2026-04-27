# 🎬 Netflix Clone

A modern Flutter mobile application inspired by the Netflix interface. This project demonstrates modern Flutter development practices with a beautiful dark-themed UI and smooth user experience.

## 📸 Overview

**Netflix Clone** is a feature-rich Flutter application that replicates the core functionality and design of the Netflix streaming platform. Built with Flutter 3.7.2+, this project showcases best practices in mobile app development, including state management, responsive design, and clean architecture.

**Repository**: [fhermas22/netflix-clone](https://github.com/fhermas22/netflix-clone)  
**Author**: [@fhermas22](https://github.com/fhermas22)

---

## ✨ Key Features

- 🏠 **Home Screen** - Browse curated movie collections and trending content
- 🔍 **Search Screen** - Quick search functionality to find movies by title
- 👤 **Profile Screen** - User profile management and preferences
- 🎥 **Movie Details** - Comprehensive movie information with similar recommendations
- 📂 **Category Filtering** - Movies organized by:
  - Les plus regardés (Most Watched)
  - Nouveautés (New Releases)
  - Action
  - Sci-Fi
  - Fantasy
- 🏷️ **Movie Tags** - "NEW" badges for recently added content
- 🎨 **Netflix-Inspired UI** - Dark theme with Netflix red accents
- 📱 **Responsive Design** - Optimized for various screen sizes
- 🎭 **Staggered Grid Layout** - Beautiful masonry grid for movie display
- 🧭 **Bottom Navigation** - Easy navigation between main sections
- 🔄 **Navigation Drawer** - Additional menu options

---

## 🏗️ Project Architecture

### Directory Structure

```
netflix-clone/
├── lib/
│   ├── main.dart                 # App entry point
│   ├── app.dart                  # Main app configuration
│   ├── constants/
│   │   └── app_images.dart      # Image asset constants
│   ├── routes/
│   │   └── app_routes.dart      # Route definitions
│   ├── theme/
│   │   └── app_colors.dart      # Color palette and theming
│   └── views/
│       ├── home.dart            # Main home with navigation
│       ├── home_screen.dart     # Movie browsing screen
│       ├── search_screen.dart   # Search functionality
│       ├── profile_screen.dart  # User profile
│       ├── movie_details.dart   # Movie details & recommendations
│       ├── navigation/
│       │   └── navigation_drawer.dart
│       └── widgets/
│           └── movie_card.dart  # Reusable movie card widget
├── assets/
│   └── images/
│       ├── netflix_logo/        # App logos
│       ├── movie_posters/       # Movie poster images
│       └── profile_pics/        # Profile pictures
├── pubspec.yaml                 # Project dependencies
├── pubspec.lock                 # Locked dependency versions
└── README.md                    # This file
```

---

## 🛠️ Tech Stack

| Technology | Version | Purpose |
|-----------|---------|---------|
| **Flutter** | 3.7.2+ | UI Framework |
| **Dart** | 3.7.2+ | Programming Language |
| **Material Design** | Latest | Design System |

---

## 📦 Dependencies

### Production Dependencies
- **flutter** - Flutter SDK
- **cupertino_icons** (^1.0.8) - iOS-style icons
- **google_nav_bar** (^5.0.7) - Stylish bottom navigation bar
- **flutter_staggered_grid_view** (^0.7.0) - Masonry grid layout
- **flutter_launcher_icons** (^0.14.3) - App icon generation

### Development Dependencies
- **flutter_test** - Flutter testing framework
- **flutter_lints** (^5.0.0) - Dart code linting

---

## 📋 Requirements

- Flutter SDK: ^3.7.2
- Dart SDK: ^3.7.2
- Android SDK: API level 21+
- iOS: 11.0+
- Available disk space: ~2GB

---

## 🚀 Installation & Setup

### 1. Prerequisites
Ensure you have Flutter installed on your system. [Install Flutter](https://flutter.dev/docs/get-started/install)

### 2. Clone the Repository
```bash
git clone https://github.com/fhermas22/netflix-clone.git
cd netflix-clone
```

### 3. Install Dependencies
```bash
flutter pub get
```

### 4. Run the Application
```bash
# For development
flutter run

# For release build
flutter run --release
```

### 5. Build for Platforms

**Android APK:**
```bash
flutter build apk --release
```

**iOS App:**
```bash
flutter build ios --release
```

---

## 📱 App Screens Overview

### Home Screen (Acceuil)
- Featured movie carousel at the top
- "Nos Films" horizontal scrollable list (first 8 movies)
- "Tendances du Moment" category filter pills
- Masonry grid view of filtered movies
- Dynamic height calculation based on content
- Bottom padding for navigation bar

### Search Screen (Recherche)
- Full-text search across movie database
- Real-time filtering as user types
- Movie results displayed in grid layout
- Tap to view movie details

### Profile Screen (Profil)
- User profile information display
- Profile picture selection
- Watchlist management
- Settings and preferences
- Logout functionality

### Movie Details Screen
- High-quality movie poster
- Complete movie information:
  - Title
  - Genre
  - Duration
  - Release status ("NEW" badge)
- Similar movies recommendation carousel
- Interactive play button
- Description and additional details

---

## 🎨 Design System

### Color Palette (Netflix Dark Theme)

| Color | Hex Code | Usage |
|-------|----------|-------|
| **Scaffold Background** | #1E1E1E | Main app background |
| **App Bar** | #141414 | Header background |
| **Drawer Background** | #0F0F0F | Side menu background |
| **Text Primary** | #FFFFFF | Main text (white) |
| **Text Secondary** | #B3B3B3 | Secondary text (light gray) |
| **Netflix Red** | #E50914 | Accent color, buttons, highlights |
| **Netflix Red (Transparent)** | #D8E50914 | Transparent accent |
| **Divider** | #333333 | Separator lines |
| **Navigation Bar** | #151515 | Bottom navigation background |
| **Nav Bar Active** | #E50914 | Active tab indicator |

### Typography
- **Font**: System default (Roboto on Android, SF Pro Display on iOS)
- **Headings**: Bold, 20-26px
- **Body Text**: Regular, 14-16px
- **Captions**: Regular, 10-12px

---

## 🎥 Movie Database

The app includes 16 pre-loaded movies across multiple genres:

**Action Movies:**
- Fast & Furious 9
- Mission Impossible: Dead Reckoning Part-1
- Top Gun: Maverick

**Superhero Movies:**
- Avengers
- Avengers: Infinity Wars
- Black Panther
- Doctor Strange
- Spider-Man 3
- Spider-Man: No Way Home
- The Eternals

**Sci-Fi:**
- Godzilla VS Kong
- Black Panther

**Fantasy/Historic:**
- 1917
- Fantastic Beasts
- The Dark Knight Rises
- Spider-Man: Across The Spider-Verse
- Grand Turismo

---

## 🧭 Navigation Flow

```
App Launch
    ↓
Home (NetflixHome) - Main container with bottom nav
    ├── HomeScreen (Movie browsing)
    ├── SearchScreen (Search functionality)
    └── ProfileScreen (User profile)
        ↓
        MovieDetails (Accessed from movie cards)
```

### Route Configuration
- `/` - Home (initial route)
- `/home` - Home Screen
- `/search` - Search Screen
- `/profile` - Profile Screen

---

## 🎯 Core Components

### MovieCard Widget
A reusable component displaying:
- Movie poster image (150x80px)
- Movie title with ellipsis overflow
- Genre and duration info
- "NOUVEAU" (New) badge for recent releases
- Play button icon
- Tap-to-navigate functionality

### HomeScreen
- Movie filtering logic by category
- Horizontal and grid layout management
- Dynamic height calculation for grid views
- Category selection with visual feedback

### Navigation Integration
- Google Navigation Bar (GNav) for modern bottom navigation
- Navigation Drawer for additional options
- Named route system for screen navigation
- Smooth transitions between screens

---

## 💡 How It Works

### Movie Filtering System
```dart
1. Load all movies into moviesList
2. In initState(), call filterMovies()
3. For each movie:
   - Check if isNew == 'true' → add to Nouveautés
   - Check if genre == 'Action' → add to Action
   - Check if genre == 'Sci-Fi' → add to Sci-Fi
   - Check if genre == 'Fantastique' → add to Fantastique
4. Display filtered results based on selected category
```

### Image Asset Management
- All images stored in `assets/images/` directories
- Constants defined in `app_images.dart`
- Images precached for optimal performance
- Support for multiple resolutions

---

## 🔄 State Management

The app uses **Flutter's built-in StatefulWidget** for state management:
- `HomeScreen` manages selected category index
- `NetflixHome` manages bottom navigation index
- Simple and effective for this app's complexity

**Future Enhancement**: Consider integrating Provider, Riverpod, or BLoC for larger projects.

---

## 📸 UI/UX Highlights

✨ **Dark Theme** - Easy on the eyes, modern aesthetic  
✨ **Smooth Animations** - Transitions and interactions feel polished  
✨ **Responsive Layout** - Works beautifully on phones and tablets  
✨ **Touch-Friendly** - Large tap targets for easy navigation  
✨ **Visual Hierarchy** - Clear distinction between sections  
✨ **Color-Coded Actions** - Netflix red for primary actions  
✨ **Loading Optimization** - Image precaching and lazy loading  

---

## 🚦 Getting Started with Development

### Running Tests
```bash
flutter test
```

### Code Analysis
```bash
flutter analyze
```

### Building for Production

**Android:**
```bash
flutter build apk --release
flutter build appbundle --release
```

**iOS:**
```bash
flutter build ios --release
```

---

## 🐛 Troubleshooting

| Issue | Solution |
|-------|----------|
| Assets not loading | Ensure paths in `pubspec.yaml` are correct |
| Build failures | Run `flutter clean` then `flutter pub get` |
| Navigation errors | Check route names in `app_routes.dart` |
| Performance lag | Reduce grid item count or optimize images |

---

## 🎓 Learning Resources

- [Flutter Official Documentation](https://flutter.dev/docs)
- [Dart Language Guide](https://dart.dev/guides)
- [Flutter Widget Catalog](https://flutter.dev/docs/development/ui/widgets)
- [Google Navigation Bar Package](https://pub.dev/packages/google_nav_bar)
- [Flutter Staggered Grid View](https://pub.dev/packages/flutter_staggered_grid_view)

---

## 📄 Project Info

- **Version**: 1.0.0
- **Build**: 1
- **Created**: June 11, 2025
- **Last Updated**: November 17, 2025
- **Status**: Active Development
- **License**: MIT (or your chosen license)

---

## 🤝 Contributing

Contributions are welcome! To contribute:

1. Fork the repository
2. Create a feature branch (`git checkout -b feature/AmazingFeature`)
3. Commit your changes (`git commit -m 'Add some AmazingFeature'`)
4. Push to the branch (`git push origin feature/AmazingFeature`)
5. Open a Pull Request

Please ensure your code follows the project's style guidelines and includes appropriate documentation.

---

## 📞 Support & Contact

For questions, suggestions, or bug reports, please visit:
- **GitHub Issues**: [Report a Bug](https://github.com/fhermas22/netflix-clone/issues)
- **GitHub Discussions**: [Start a Discussion](https://github.com/fhermas22/netflix-clone/discussions)

---

## 📜 License

This project is open source and available under the **MIT License**. Feel free to use this project for personal and commercial purposes.

See the [LICENSE](LICENSE) file for more details.

---

## 👨‍💻 Author

**[@fhermas22](https://github.com/fhermas22)**

- GitHub: [fhermas22](https://github.com/fhermas22)
- Repository: [netflix-clone](https://github.com/fhermas22/netflix-clone)

A passionate Flutter developer creating beautiful and functional mobile applications.

---

## 🙏 Acknowledgments

- Flutter and Dart communities for excellent documentation
- Netflix for design inspiration
- All contributors and users who support this project

---

**Star ⭐ this repository if you found it helpful!**
