import 'package:flutter/material.dart';
import 'package:netflix_clone/constants/app_images.dart';
import 'package:netflix_clone/theme/app_colors.dart';

import 'movie_details.dart';

class SearchScreen extends StatefulWidget {
  const SearchScreen({super.key});

  @override
  State<SearchScreen> createState() => _SearchScreenState();
}

class _SearchScreenState extends State<SearchScreen> {
  final TextEditingController _searchBarController = TextEditingController();
  List<Map<String, dynamic>> filteredMovies = [];
  bool notFound = false;

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

  Future<void> _searchMovie(var textTap, List<Map<String, dynamic>> list) async {
    String query = textTap.text.trim().toLowerCase();

    if (query.isEmpty) {
      setState(() {
        filteredMovies = [];
        notFound = false;
      });
    } else {
      List<Map<String, dynamic>> results = list.where(
        (movie) {
          final title = movie['title']?.toString().toLowerCase() ?? '';
          return title.contains(query);
        }
      ).toList();

      setState(() {
        filteredMovies = results;
        notFound = results.isEmpty;
      });
    }
  }

  @override
  void initState() {
    super.initState();
    _searchMovie(_searchBarController, moviesList);
  }

  @override
  void dispose() {
    _searchBarController.dispose();
    super.dispose();
  }

  /* condition ? fais-ci : sinon fais-ça  */

  // int a = DateTime.now().year;

  @override
  Widget build(BuildContext context) {
    _searchMovie(_searchBarController, moviesList);
    List<Map<String, dynamic>> searchedMovies = filteredMovies;

    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 15, vertical: 10),
          child: Column(
            children: [
              TextField(
                controller: _searchBarController,
                cursorColor: AppColors.redNetflix,
                cursorRadius: Radius.circular(20),
                style: TextStyle(
                    color: AppColors.textSecondary
                ),
                decoration: InputDecoration(
                    prefixIcon: Icon(
                        Icons.search
                    ),
                    prefixIconColor: AppColors.redNetflix,
                    hintText: "Rechercher ...",
                    enabledBorder: OutlineInputBorder(
                      borderSide: BorderSide(
                          color: AppColors.divider,
                          width: 1.5
                      ),
                      borderRadius: BorderRadius.all(
                          Radius.circular(12)
                      ),
                    ),
                    focusedBorder: OutlineInputBorder(
                        borderSide: BorderSide(
                            color: AppColors.redNetflix
                        ),
                        borderRadius: BorderRadius.all(
                            Radius.circular(12)
                        )
                    )
                ),
                onSubmitted: (value) {
                  if (value == '') {
                    setState(() {
                      searchedMovies = [];
                    });
                  } else {
                    _searchMovie(_searchBarController, moviesList);
                  }
                },
              ),

              SizedBox(height: 14),

              notFound ?
              Center(
                  heightFactor: 3,
                  child: Column(
                    children: [
                      Icon(
                        Icons.mood_bad_sharp,
                        color: AppColors.hover,
                        size: 100,
                      ),
                      Text(
                        "Aucun film trouvé.",
                        style: TextStyle(
                            color: AppColors.divider,
                            fontWeight: FontWeight.w600,
                            fontSize: 18
                        ),
                        textAlign: TextAlign.center,
                      )
                    ],
                  )
              )
              : searchedMovies.isEmpty ?
              Center(
                  heightFactor: 3,
                  child: Column(
                    children: [
                      Icon(
                        Icons.search_sharp,
                        color: AppColors.hover,
                        size: 100,
                      ),
                      Text(
                        "Recherchez vos films \nen un clin d'oeil",
                        style: TextStyle(
                            color: AppColors.divider,
                            fontWeight: FontWeight.w600,
                            fontSize: 18
                        ),
                        textAlign: TextAlign.center,
                      )
                    ],
                  )
              )
              : ListView.builder(
                itemCount: filteredMovies.length,
                physics: NeverScrollableScrollPhysics(),
                shrinkWrap: true,
                itemBuilder: (context, index) {
                  final movie = filteredMovies[index];
                  return Container(
                    padding: EdgeInsets.all(8),
                    margin: EdgeInsets.only(top: 10),
                    decoration: BoxDecoration(
                        color: AppColors.card,
                        borderRadius: BorderRadius.circular(10)
                    ),
                    child: GestureDetector(
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
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              mainAxisAlignment: MainAxisAlignment.spaceAround,
                              children: [
                                SizedBox(
                                  width: MediaQuery.of(context).size.width / 2.2,
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

                                Text(
                                  '${movie['genre']} • ${movie['duration']}',
                                  style: const TextStyle(
                                    color: AppColors.textSecondary,
                                    fontSize: 12,
                                  ),
                                ),

                                SizedBox(
                                  width: 160,
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                    children: [
                                      if (movie['isNew'] == 'true')
                                        Container(
                                          padding: const EdgeInsets.symmetric(horizontal: 6, vertical: 2),
                                          decoration: BoxDecoration(
                                            color: AppColors.redNetflix,
                                            borderRadius: BorderRadius.circular(4),
                                          ),
                                          child: const Text(
                                            'NOUVEAU',
                                            style: TextStyle(
                                              color: AppColors.textPrimary,
                                              fontSize: 10,
                                            ),
                                          ),
                                        ),
                                      /*Icon(
                                          Icons.play_circle_fill,
                                          color: AppColors.iconDefault,
                                          size: 20
                                      ),*/
                                    ],
                                  ),
                                )
                              ],
                            ),
                          )
                        ],
                      ),
                    )
                  );
                },
              ),
            ],
          ),
        )
      ),
    );
  }
}
