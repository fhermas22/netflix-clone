import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'package:netflix_clone/views/widgets/movie_card.dart';
import '../constants/app_images.dart';
import '../theme/app_colors.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int selectedIndex = 0;
  List<String> categories = [
    'Les plus regardés',
    'Nouveautés',
    'Action',
    'Sci-Fi'
  ];

  List<Map<String, dynamic>> moviesList = [
    {
      'image': AppImages.posterFastAndFurious9,
      'title': 'Fast & Furious 9',
      'genre': 'Action',
      'duration': '2h05',
      'isNew': 'true'
    },
    {
      'image': AppImages.posterAvengers1,
      'title': 'Avengers',
      'genre': 'Super-héros',
      'duration': '2h20',
      'isNew': 'false'
    },
    {
      'image': AppImages.poster1917,
      'title': '1917',
      'genre': 'Historique',
      'duration': '1h59',
      'isNew': 'true'
    },
    {
      'image': AppImages.posterBlackPanther,
      'title': 'Black Panther',
      'genre': 'Sci-Fi',
      'duration': '2h15',
      'isNew': 'false'
    },
    {
      'image': AppImages.posterDoctorStrange,
      'title': 'Doctor Strange',
      'genre': 'Fantastique',
      'duration': '1h48',
      'isNew': 'true'
    },
    {
      'image': AppImages.posterEternals,
      'title': 'Les Eternels',
      'genre': 'Super-héros',
      'duration': '2h10',
      'isNew': 'false'
    },
    {
      'image': AppImages.posterFantasticBeasts,
      'title': 'Les Animaux Fantastiques',
      'genre': 'Fantastique',
      'duration': '1h55',
      'isNew': 'true'
    },
    {
      'image': AppImages.posterAvengersInfinityWars,
      'title': 'Avengers : Infinity Wars',
      'genre': 'Super-héros',
      'duration': '2h40',
      'isNew': 'false'
    },
    {
      'image': AppImages.posterGodzillaVsKong,
      'title': 'Godzilla VS Kong',
      'genre': 'Sci-Fi',
      'duration': '2h00',
      'isNew': 'true'
    },
    {
      'image': AppImages.posterGrandTurismo,
      'title': 'Grand Turismo, le film',
      'genre': 'Biopic',
      'duration': '2h12',
      'isNew': 'true'
    },
    {
      'image': AppImages.posterMissionImpossibleDeadReckoningPart1,
      'title': 'Mission Impossible : Dead Reckoning Part-1',
      'genre': 'Action',
      'duration': '2h34',
      'isNew': 'true'
    },
    {
      'image': AppImages.posterSpiderMan3,
      'title': 'Spider-Man 3',
      'genre': 'Super-héros',
      'duration': '2h05',
      'isNew': 'false'
    },
    {
      'image': AppImages.posterSpiderManAcrossTheSpiderVerse,
      'title': 'Spider-Man : Across The Spider-Verse',
      'genre': 'Animation',
      'duration': '1h58',
      'isNew': 'true'
    },
    {
      'image': AppImages.posterSpiderManNoWayHome,
      'title': 'Spider-Man : No Way Home',
      'genre': 'Super-héros',
      'duration': '2h18',
      'isNew': 'false'
    },
    {
      'image': AppImages.posterTheDarkKnightRises,
      'title': 'Le Chevalier Noir',
      'genre': 'Thriller',
      'duration': '1h55',
      'isNew': 'false'
    },
    {
      'image': AppImages.posterTopGunMaverick,
      'title': 'Top Gun : Maverick',
      'genre': 'Action',
      'duration': '1h48',
      'isNew': 'true'
    },
  ];

  Map<String, List<Map<String, dynamic>>> moviesPerCategory = {
    'Les plus regardés': [
      {
        'image': AppImages.posterGrandTurismo,
        'title': 'Grand Turismo, le film',
        'genre': 'Biopic',
        'duration': '2h12',
        'isNew': 'true'
      },
      {
        'image': AppImages.posterMissionImpossibleDeadReckoningPart1,
        'title': 'Mission Impossible : Dead Reckoning Part-1',
        'genre': 'Action',
        'duration': '2h34',
        'isNew': 'true'
      },
      {
        'image': AppImages.posterSpiderManAcrossTheSpiderVerse,
        'title': 'Spider-Man : Across The Spider-Verse',
        'genre': 'Animation',
        'duration': '1h58',
        'isNew': 'true'
      },
      {
        'image': AppImages.posterTopGunMaverick,
        'title': 'Top Gun : Maverick',
        'genre': 'Action',
        'duration': '1h48',
        'isNew': 'true'
      },
      {
        'image': AppImages.posterGodzillaVsKong,
        'title': 'Godzilla VS Kong',
        'genre': 'Action',
        'duration': '2h00',
        'isNew': 'true'
      },
      {
        'image': AppImages.posterEternals,
        'title': 'Les Eternels',
        'genre': 'Super-héros',
        'duration': '2h10',
        'isNew': 'false'
      },
      {
        'image': AppImages.posterFantasticBeasts,
        'title': 'Les Animaux Fantastiques',
        'genre': 'Fantastique',
        'duration': '1h55',
        'isNew': 'true'
      },
      {
        'image': AppImages.poster1917,
        'title': '1917',
        'genre': 'Historique',
        'duration': '1h59',
        'isNew': 'true'
      },
      {
        'image': AppImages.posterFastAndFurious9,
        'title': 'Fast & Furious 9',
        'genre': 'Action',
        'duration': '2h05',
        'isNew': 'true'
      },
      {
        'image': AppImages.posterAvengersInfinityWars,
        'title': 'Avengers : Infinity Wars',
        'genre': 'Sci-Fi',
        'duration': '2h40',
        'isNew': 'false'
      },
      {
        'image': AppImages.posterBlackPanther,
        'title': 'Black Panther',
        'genre': 'Sci-Fi',
        'duration': '2h15',
        'isNew': 'false'
      },
      {
        'image': AppImages.posterSpiderMan3,
        'title': 'Spider-Man 3',
        'genre': 'Super-héros',
        'duration': '2h05',
        'isNew': 'false'
      },
      {
        'image': AppImages.posterDoctorStrange,
        'title': 'Doctor Strange',
        'genre': 'Fantastique',
        'duration': '1h48',
        'isNew': 'true'
      },
      {
        'image': AppImages.posterSpiderManNoWayHome,
        'title': 'Spider-Man : No Way Home',
        'genre': 'Super-héros',
        'duration': '2h18',
        'isNew': 'false'
      },
      {
        'image': AppImages.posterTheDarkKnightRises,
        'title': 'Le Chevalier Noir',
        'genre': 'Thriller',
        'duration': '1h55',
        'isNew': 'false'
      },
      {
        'image': AppImages.posterAvengers1,
        'title': 'Avengers',
        'genre': 'Super-héros',
        'duration': '2h20',
        'isNew': 'false'
      },
    ],
    'Nouveautés': [],
    'Action': [],
    'Sci-Fi': [],
    'Fantastique': [],
  };

  Future<void> filterMovies(var listOfMovies) async {
    for (var movie in listOfMovies) {
      if (movie['isNew'] == 'true') {
        moviesPerCategory['Nouveautés']?.add(movie);
      }
      if (movie['genre'] == 'Action') {
        moviesPerCategory['Action']?.add(movie);
      }
      if (movie['genre'] == 'Sci-Fi') {
        moviesPerCategory['Sci-Fi']?.add(movie);
      }
      if (movie['genre'] == 'Fantastique') {
        moviesPerCategory['Fantastique']?.add(movie);
      }
    }
  }

  @override
  void initState() {
    super.initState();
    filterMovies(moviesList);
  }

  @override
  Widget build(BuildContext context) {
    final selectedCategory = categories[selectedIndex];
    final filteredMovies = moviesPerCategory[selectedCategory];

    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 15, vertical: 10),
          child: Column(
            children: [
              Text(
                "Recommandés pour vous",
                style: TextStyle(
                  fontSize: 26,
                  fontWeight: FontWeight.bold,
                  color: AppColors.textPrimary
                ),
              ),

              SizedBox(height: 20),

              // ==== Section : Nos Films === //
              Row(
                children: [
                  Text(
                    "Nos Films",
                    style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                        color: AppColors.textPrimary
                    ),
                  )
                ],
              ),
              SizedBox(height: 10),
              SizedBox(
                height: 176,
                child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemCount: 8,
                  itemBuilder: (context, index) {
                    final movie = moviesList[index];
                    return MovieCard(
                      image: movie['image']!,
                      title: movie['title']!,
                      genre: movie['genre']!,
                      duration: movie['duration']!,
                      isNew: movie['isNew'] == 'true',
                      sendMovies: moviesList,
                    );
                  },
                ),
              ),

              SizedBox(height: 30),

              // === Section : Tendance du Moment === //
              Row(
                children: [
                  Text(
                    "Tendances du Moment",
                    style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                        color: AppColors.textPrimary
                    ),
                  ),
                  Icon(
                    Icons.local_fire_department_outlined,
                    color: AppColors.redNetflix,
                  )
                ],
              ),
              SizedBox(height: 10),
              SizedBox(
                height: 40,
                child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemCount: categories.length,
                  itemBuilder: (context, index) {
                    final isSelected = index == selectedIndex;
                    return GestureDetector(
                      onTap: () {
                        setState(() {
                          selectedIndex = index;
                        });
                      },
                      child: Container(
                        margin: const EdgeInsets.only(right: 12),
                        padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
                        decoration: BoxDecoration(
                          color: isSelected ? AppColors.redNetflix : Colors.transparent,
                          borderRadius: BorderRadius.circular(20),
                          border: Border.all(color: AppColors.redNetflix)
                        ),
                        child: Text(
                          categories[index],
                          style: TextStyle(
                            color: isSelected ? AppColors.textPrimary : AppColors.redNetflix,
                            fontWeight: FontWeight.bold
                          ),
                        ),
                      ),
                    );
                  },
                ),
              ),
              SizedBox(height: 10),
              SizedBox(
                height: filteredMovies!.length <= 2 ?
                  200 : filteredMovies.length <= 4 ? 366 : 556,
                child: MasonryGridView.count(
                  crossAxisCount: 2,
                  itemCount: filteredMovies.length,
                  mainAxisSpacing: 10,
                  crossAxisSpacing: 10,
                  itemBuilder: (context, index) {
                    final movie = filteredMovies[index];
                    return SizedBox(
                      height: 176,
                      child: MovieCard(
                        image: movie['image']!,
                        title: movie['title']!,
                        genre: movie['genre']!,
                        duration: movie['duration']!,
                        isNew: movie['isNew'] == 'true',
                        sendMovies: moviesList,
                      ),
                    );
                  }
                ),
              ),

              SizedBox(height: 30),

              // === Section : En savoir plus === //
              Row(
                children: [
                  Text(
                    "En savoir plus",
                    style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                        color: AppColors.textPrimary
                    ),
                  )
                ],
              ),
              SizedBox(height: 10),
              Text(
                "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Suspendisse id elementum ex."
                  "\nPraesent interdum, nisi a tempor convallis, arcu sapien efficitur quam, pretium bibendum"
                  "justo magna in nunc. \nDonec velit lorem, sagittis in mi at, vulputate imperdiet tortor."
                  "Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos."
              )
            ],
          ),
        ),
      ),
    );
  }
}
