import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'package:netflix_clone/constants/app_images.dart';
import 'package:netflix_clone/theme/app_colors.dart';
import 'package:netflix_clone/views/widgets/movie_card.dart';

import 'movie_details.dart';

class ProfileScreen extends StatefulWidget {
  const ProfileScreen({super.key});

  @override
  State<ProfileScreen> createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen> {
  String selectedSection = 'history';
  bool clickedFavoriteIcon = true;

  List<Map<String, dynamic>> moviesList = [
    {
      'image': AppImages.posterFastAndFurious9,
      'title': 'Fast & Furious 9',
      'genre': 'Action',
      'duration': '2h05',
      'isNew': 'true',
    },
    {
      'image': AppImages.posterAvengers1,
      'title': 'Avengers',
      'genre': 'Super-héros',
      'duration': '2h20',
      'isNew': 'false',
    },
    {
      'image': AppImages.poster1917,
      'title': '1917',
      'genre': 'Historique',
      'duration': '1h59',
      'isNew': 'true',
    },
    {
      'image': AppImages.posterBlackPanther,
      'title': 'Black Panther',
      'genre': 'Sci-Fi',
      'duration': '2h15',
      'isNew': 'false',
    },
    {
      'image': AppImages.posterDoctorStrange,
      'title': 'Doctor Strange',
      'genre': 'Fantastique',
      'duration': '1h48',
      'isNew': 'true',
    },
    {
      'image': AppImages.posterEternals,
      'title': 'Les Eternels',
      'genre': 'Super-héros',
      'duration': '2h10',
      'isNew': 'false',
    },
    {
      'image': AppImages.posterFantasticBeasts,
      'title': 'Les Animaux Fantastiques',
      'genre': 'Fantastique',
      'duration': '1h55',
      'isNew': 'true',
    },
    {
      'image': AppImages.posterAvengersInfinityWars,
      'title': 'Avengers : Infinity Wars',
      'genre': 'Super-héros',
      'duration': '2h40',
      'isNew': 'false',
    },
    {
      'image': AppImages.posterGodzillaVsKong,
      'title': 'Godzilla VS Kong',
      'genre': 'Sci-Fi',
      'duration': '2h00',
      'isNew': 'true',
    },
    {
      'image': AppImages.posterGrandTurismo,
      'title': 'Grand Turismo, le film',
      'genre': 'Biopic',
      'duration': '2h12',
      'isNew': 'true',
    },
    {
      'image': AppImages.posterMissionImpossibleDeadReckoningPart1,
      'title': 'Mission Impossible : Dead Reckoning Part-1',
      'genre': 'Action',
      'duration': '2h34',
      'isNew': 'true',
    },
    {
      'image': AppImages.posterSpiderMan3,
      'title': 'Spider-Man 3',
      'genre': 'Super-héros',
      'duration': '2h05',
      'isNew': 'false',
    },
    {
      'image': AppImages.posterSpiderManAcrossTheSpiderVerse,
      'title': 'Spider-Man : Across The Spider-Verse',
      'genre': 'Animation',
      'duration': '1h58',
      'isNew': 'true',
    },
    {
      'image': AppImages.posterSpiderManNoWayHome,
      'title': 'Spider-Man : No Way Home',
      'genre': 'Super-héros',
      'duration': '2h18',
      'isNew': 'false',
    },
    {
      'image': AppImages.posterTheDarkKnightRises,
      'title': 'Le Chevalier Noir',
      'genre': 'Thriller',
      'duration': '1h55',
      'isNew': 'false',
    },
    {
      'image': AppImages.posterTopGunMaverick,
      'title': 'Top Gun : Maverick',
      'genre': 'Action',
      'duration': '1h48',
      'isNew': 'true',
    },
  ];

  List<Map<String, dynamic>> recentlyMovies = [
    {
      'image': AppImages.posterAvengers1,
      'title': 'Avengers',
      'genre': 'Super-héros',
      'duration': '2h20',
      'isNew': 'false',
      'progress': '0.8',
      'lately' : '30 minutes'
    },
    {
      'image': AppImages.posterTheDarkKnightRises,
      'title': 'Le Chevalier Noir',
      'genre': 'Thriller',
      'duration': '1h55',
      'isNew': 'false',
      'progress': '0.4',
      'lately' : '1 heure'
    },
    {
      'image': AppImages.posterSpiderMan3,
      'title': 'Spider-Man 3',
      'genre': 'Super-héros',
      'duration': '2h05',
      'isNew': 'false',
      'progress': '0.6',
      'lately' : '9 heures'
    },
    {
      'image': AppImages.posterDoctorStrange,
      'title': 'Doctor Strange',
      'genre': 'Fantastique',
      'duration': '1h48',
      'isNew': 'true',
      'progress': '1.0',
      'lately' : '3 jours'
    },
    {
      'image': AppImages.posterFantasticBeasts,
      'title': 'Les Animaux Fantastiques',
      'genre': 'Fantastique',
      'duration': '1h55',
      'isNew': 'true',
      'progress': '0.3',
      'lately' : '2 semaines'
    },
    {
      'image': AppImages.posterSpiderManNoWayHome,
      'title': 'Spider-Man : No Way Home',
      'genre': 'Super-héros',
      'duration': '2h18',
      'isNew': 'false',
      'progress': '0.9',
      'lately' : '1 mois'
    },
  ];

  List<Map<String, dynamic>> favoriteMovies = [
    {
      'image': AppImages.posterAvengersInfinityWars,
      'title': 'Avengers : Infinity Wars',
      'genre': 'Super-héros',
      'duration': '2h40',
      'isNew': 'false',
    },
    {
      'image': AppImages.posterTopGunMaverick,
      'title': 'Top Gun : Maverick',
      'genre': 'Action',
      'duration': '1h48',
      'isNew': 'true',
    },
    {
      'image': AppImages.posterGodzillaVsKong,
      'title': 'Godzilla VS Kong',
      'genre': 'Sci-Fi',
      'duration': '2h00',
      'isNew': 'true',
    },
    {
      'image': AppImages.posterFastAndFurious9,
      'title': 'Fast & Furious 9',
      'genre': 'Action',
      'duration': '2h05',
      'isNew': 'true',
    },
    {
      'image': AppImages.posterBlackPanther,
      'title': 'Black Panther',
      'genre': 'Sci-Fi',
      'duration': '2h15',
      'isNew': 'false',
    },
    {
      'image': AppImages.posterMissionImpossibleDeadReckoningPart1,
      'title': 'Mission Impossible : Dead Reckoning Part-1',
      'genre': 'Action',
      'duration': '2h34',
      'isNew': 'true',
    },

  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          // ==== Section : Entête === //
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 15, vertical: 15),
            child: Row(
              children: [
                Container(
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    border: Border.all(color: AppColors.redNetflix, width: 2),
                  ),
                  child: CircleAvatar(
                    backgroundImage: AssetImage(AppImages.profilePic02),
                    backgroundColor: AppColors.iconDefault,
                    radius: 46,
                  ),
                ),

                SizedBox(width: 22),

                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      children: [
                        Text(
                          "Hermas Doe",
                          style: TextStyle(
                            fontSize: 18,
                            color: AppColors.textSecondary,
                          ),
                        ),
                      ],
                    ),
                    Row(
                      children: [
                        Text(
                          "@herdoe236",
                          style: TextStyle(
                            fontSize: 16,
                            color: AppColors.textSecondary,
                          ),
                        ),
                      ],
                    ),
                    SizedBox(height: 10),
                    Row(
                      children: [
                        Text(
                          "RNT0125489",
                          style: TextStyle(
                            fontSize: 14,
                            color: AppColors.textMuted,
                          ),
                        ),
                        SizedBox(width: 6),
                        Container(
                          padding: EdgeInsets.symmetric(horizontal: 4),
                          decoration: BoxDecoration(
                            color: AppColors.redNetflix,
                            borderRadius: BorderRadius.circular(20),
                          ),
                          child: Text(
                            "Abonnement Valide",
                            style: TextStyle(
                              fontSize: 12,
                              color: AppColors.textPrimary,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ],
            ),
          ),

          SizedBox(height: 16),

          // ==== Section : Switcher Historique & Favoris === //
          SizedBox(
            width: MediaQuery.of(context).size.width,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                GestureDetector(
                  onTap: () {
                    setState(() {
                      selectedSection = 'history';
                    });
                  },
                  child: Container(
                    height: 40,
                    width: MediaQuery.of(context).size.width / 2.01,
                    decoration: BoxDecoration(
                      border: Border.all(
                        color:
                            selectedSection == 'history'
                                ? AppColors.redNetflix
                                : AppColors.divider,
                        width: 2,
                      ),
                      borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(10),
                        bottomLeft: Radius.circular(10),
                      ),
                    ),
                    child: Icon(
                      Icons.history_outlined,
                      color:
                          selectedSection == 'history'
                              ? AppColors.redNetflix
                              : AppColors.iconDefault,
                    ),
                  ),
                ),
                GestureDetector(
                  onTap: () {
                    setState(() {
                      selectedSection = 'favorite';
                    });
                  },
                  child: Container(
                    height: 40,
                    width: MediaQuery.of(context).size.width / 2.01,
                    decoration: BoxDecoration(
                      border: Border.all(
                        color:
                            selectedSection == 'favorite'
                                ? AppColors.redNetflix
                                : AppColors.divider,
                        width: 2,
                      ),
                      borderRadius: BorderRadius.only(
                        topRight: Radius.circular(10),
                        bottomRight: Radius.circular(10),
                      ),
                    ),
                    child: Icon(
                      Icons.favorite_outlined,
                      color:
                          selectedSection == 'favorite'
                              ? AppColors.redNetflix
                              : AppColors.iconDefault,
                    ),
                  ),
                ),
              ],
            ),
          ),

          // ==== Section : Historique & Favoris === //
          Expanded(
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: 15, vertical: 10),
              child: selectedSection == 'history' ?
              ListView.builder(
                itemCount: recentlyMovies.length,
                shrinkWrap: true,
                itemBuilder: (context, index) {
                  final movie = recentlyMovies[index];
                  return GestureDetector(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => MovieDetails(
                            movieTitle: movie['title'],
                            moviePoster: movie['image'],
                            movieGenre: movie['genre'],
                            similarMovies: moviesList
                          ),
                        )
                      );
                    },
                    child: Container(
                      padding: EdgeInsets.all(8),
                      margin: EdgeInsets.only(top: 10),
                      decoration: BoxDecoration(
                        color: AppColors.card,
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child: Row(
                        children: [
                          Container(
                            width: 130,
                            height: 80,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(8),
                              image: DecorationImage(
                                image: AssetImage(movie['image']),
                                fit: BoxFit.cover,
                              ),
                            ),
                          ),

                          SizedBox(width: 10),

                          SizedBox(
                            height: 70,
                            width: 168,
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              mainAxisAlignment: MainAxisAlignment.spaceAround,
                              children: [
                                SizedBox(
                                  width:
                                      MediaQuery.of(context).size.width / 2.2,
                                  child: Text(
                                    movie['title'],
                                    maxLines: 1,
                                    overflow: TextOverflow.ellipsis,
                                    style: const TextStyle(
                                      color: AppColors.textPrimary,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                ),

                                LinearProgressIndicator(
                                  value: double.tryParse(movie['progress']) ?? 0.0,
                                  backgroundColor: Colors.grey[700],
                                  valueColor: AlwaysStoppedAnimation<Color>(
                                    AppColors.redNetflix,
                                  ),
                                  borderRadius: BorderRadius.circular(20),
                                  minHeight: 6,
                                ),

                                SizedBox(
                                  width: 160,
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      Text(
                                        "Regardé il y a ${movie['lately']}",
                                        style: const TextStyle(
                                          color: AppColors.textSecondary,
                                          fontSize: 12,
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  );
                },
              )
              : MasonryGridView.count(
                crossAxisCount: 2,
                itemCount: favoriteMovies.length,
                mainAxisSpacing: 10,
                crossAxisSpacing: 6,
                itemBuilder: (context, index) {
                  final movie = favoriteMovies[index];
                  return Stack(
                    children: [
                      GestureDetector(
                        onTap: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => MovieDetails(
                                    movieTitle: movie['title'],
                                    moviePoster: movie['image'],
                                    movieGenre: movie['genre'],
                                    similarMovies: moviesList
                                ),
                              )
                          );
                        },
                        child: Container(
                          width: 150,
                          padding: const EdgeInsets.only(left: 12, top: 10, right: 12),
                          margin: const EdgeInsets.all(2),
                          decoration: BoxDecoration(
                              color: AppColors.divider,
                              borderRadius: BorderRadius.circular(10)
                          ),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              // Poster
                              Container(
                                width: 130,
                                height: 80,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(8),
                                  image: DecorationImage(
                                    image: AssetImage(movie['image']),
                                    fit: BoxFit.cover,
                                  ),
                                ),
                              ),

                              const SizedBox(height: 6),

                              // Titre
                              SizedBox(
                                width: 120,
                                child: Text(
                                  movie['title'],
                                  maxLines: 1,
                                  overflow: TextOverflow.ellipsis,
                                  style: const TextStyle(
                                    color: AppColors.textPrimary,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                              ),

                              // Genre + durée
                              SizedBox(
                                width: 120,
                                child: Text(
                                  '${movie['genre']} • ${movie['duration']}',
                                  style: const TextStyle(
                                    color: AppColors.textSecondary,
                                    fontSize: 12,
                                  ),
                                ),
                              ),

                              const SizedBox(height: 6),
                            ],
                          ),
                        ),
                      ),

                      // Bouton
                      Positioned(
                        top: -10,
                        right: 0,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: [
                            GestureDetector(
                              onTap: () {
                                setState(() {
                                  if (clickedFavoriteIcon == true) {
                                    clickedFavoriteIcon = false;
                                  } else {
                                    clickedFavoriteIcon = true;
                                  }
                                });
                              },
                              child: Container(
                                margin: EdgeInsets.symmetric(horizontal: 6, vertical: 10),
                                padding: EdgeInsets.all(6),
                                decoration: BoxDecoration(
                                  color: AppColors.redNetflix,
                                  shape: BoxShape.circle
                                ),
                                child: Icon(
                                  clickedFavoriteIcon ? Icons.favorite : Icons.favorite_outline,
                                  color: AppColors.iconSelected,
                                  size: 16
                                ),
                              )
                            )
                          ],
                        )
                      )
                    ],
                  );
                }
              )
            ),
          ),
        ],
      ),
    );
  }
}
