import 'package:flutter/material.dart';
import 'package:netflix_clone/views/widgets/movie_card.dart';

import '../constants/app_images.dart';
import '../theme/app_colors.dart';

class MovieDetails extends StatefulWidget {
  final String movieTitle;
  final String moviePoster;
  final String movieGenre;
  final List<Map<String, dynamic>> similarMovies;

  const MovieDetails({
    super.key,
    required this.movieTitle,
    required this.moviePoster,
    required this.similarMovies,
    required this.movieGenre
  });

  @override
  State<MovieDetails> createState() => _MovieDetailsState();
}

class _MovieDetailsState extends State<MovieDetails> {
  bool clickedFavoriteIcon = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              // ==== Section : Couverture === //
              Stack(
                children: [
                  Image.asset(widget.moviePoster),

                  Positioned(
                    bottom: 0,
                    child: Container(
                      // height: 140,
                      width: MediaQuery.of(context).size.width,
                      padding: EdgeInsets.only(bottom: 10),
                      decoration: BoxDecoration(
                        gradient: LinearGradient(
                          begin: Alignment.bottomCenter,
                          end: Alignment.topCenter,
                          colors: [Color(0xEA000000), Color(0x00000000)],
                        ),
                      ),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Container(
                            margin: EdgeInsets.only(left: 10, top: 60),
                            child: Text(
                              widget.movieTitle,
                              style: TextStyle(
                                color: AppColors.textPrimary,
                                fontWeight: FontWeight.w600,
                                fontSize: 22,
                              ),
                            ),
                          ),
                          Container(
                            margin: EdgeInsets.only(left: 10),
                            child: Row(
                              children: [
                                Container(
                                  margin: EdgeInsets.only(top: 1),
                                  child: Text(
                                    '${widget.movieGenre} • ',
                                    style: const TextStyle(
                                      color: AppColors.textSecondary,
                                      fontSize: 12,
                                      fontWeight: FontWeight.w500,
                                    ),
                                  ),
                                ),
                                Icon(
                                  Icons.star_outlined,
                                  color: Colors.orangeAccent,
                                  size: 18,
                                ),
                                Icon(
                                  Icons.star_outlined,
                                  color: Colors.orangeAccent,
                                  size: 18,
                                ),
                                Icon(
                                  Icons.star_outlined,
                                  color: Colors.orangeAccent,
                                  size: 18,
                                ),
                                Icon(
                                  Icons.star_outlined,
                                  color: Colors.orangeAccent,
                                  size: 18,
                                ),
                                Icon(
                                  Icons.star_half_outlined,
                                  color: Colors.orangeAccent,
                                  size: 18,
                                ),
                                Container(
                                  margin: EdgeInsets.only(top: 1),
                                  child: Text(
                                    ' (4,5)',
                                    style: const TextStyle(
                                      color: AppColors.textMuted,
                                      fontSize: 10,
                                      fontWeight: FontWeight.w500,
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    )
                  ),

                  Positioned(
                    child: Container(
                      margin: EdgeInsets.all(6),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          GestureDetector(
                            onTap: () {
                              Navigator.pop(context);
                            },
                            child: Container(
                              padding: EdgeInsets.all(2),
                              decoration: BoxDecoration(
                                shape: BoxShape.circle,
                                color: AppColors.iconTransparent,
                              ),
                              child: Icon(
                                Icons.arrow_back,
                                color: Colors.white,
                              ),
                            ),
                          ),
                          Row(
                            children: [
                              GestureDetector(
                                onTap: () {},
                                child: Container(
                                  padding: EdgeInsets.all(2),
                                  margin: EdgeInsets.only(right: 8),
                                  decoration: BoxDecoration(
                                    shape: BoxShape.circle,
                                    color: AppColors.iconTransparent,
                                  ),
                                  child: Icon(
                                    Icons.share_outlined,
                                    color: Colors.white,
                                  ),
                                ),
                              ),
                              GestureDetector(
                                onTap: () {
                                  setState(() {
                                    if (clickedFavoriteIcon == false) {
                                      clickedFavoriteIcon = true;
                                    } else {
                                      clickedFavoriteIcon = false;
                                    }
                                  });
                                },
                                child: Container(
                                  padding: EdgeInsets.all(2),
                                  decoration: BoxDecoration(
                                    shape: BoxShape.circle,
                                    color: AppColors.iconTransparent,
                                  ),
                                  child: Icon(
                                    clickedFavoriteIcon ? Icons.favorite : Icons.favorite_border,
                                    color: clickedFavoriteIcon ? AppColors.redNetflix : Colors.white,
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ),

                  Positioned.fill(
                    child: Align(
                      alignment: Alignment.center,
                      child: GestureDetector(
                        onTap: () {},
                        child: Container(
                          height: 50,
                          width: 50,
                          decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            color: AppColors.redNetflixTransparent,
                          ),
                          child: Icon(Icons.play_arrow, color: Colors.white),
                        ),
                      ),
                    ),
                  )
                ],
              ),

              Padding(
                padding: EdgeInsets.symmetric(horizontal: 15, vertical: 10),
                child: Column(
                  children: [
                    SizedBox(height: 10),

                    // ==== Section : Synopsis === //
                    Row(
                      children: [
                        Text(
                          "Synopsis",
                          style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.bold,
                            color: AppColors.textPrimary,
                          ),
                        ),
                      ],
                    ),
                    SizedBox(height: 10),
                    Text(
                      "Praesent interdum, velit lorem, sagittis in mi at, vulputate imperdiet tortor."
                      " Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos.",
                      style: TextStyle(
                        fontSize: 12
                      ),
                    ),

                    SizedBox(height: 30),

                    // ==== Section : Commentaires === //
                    Row(
                      children: [
                        Text(
                          "Commentaires",
                          style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.bold,
                            color: AppColors.textPrimary,
                          ),
                        ),
                      ],
                    ),
                    SizedBox(height: 10),
                    Container(
                      height: MediaQuery.of(context).size.height / 6,
                      width: MediaQuery.of(context).size.width,
                      decoration: BoxDecoration(
                        border: Border.all(color: AppColors.divider, width: 1),
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child: Center(
                        child: Text(
                          "Aucun commentaire.",
                          style: TextStyle(
                            color: AppColors.textMuted,
                            fontSize: 15,
                          ),
                        ),
                      ),
                    ),

                    SizedBox(height: 30),

                    // ==== Section : Films similaires === //
                    Row(
                      children: [
                        Text(
                          "Films similaires",
                          style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.bold,
                            color: AppColors.textPrimary,
                          ),
                        ),
                      ],
                    ),
                    SizedBox(height: 10),
                    SizedBox(
                      height: 176,
                      child: ListView.builder(
                        scrollDirection: Axis.horizontal,
                        itemCount: 8,
                        itemBuilder: (context, index) {
                          final movie = widget.similarMovies[index];
                          return MovieCard(
                            image: movie['image']!,
                            title: movie['title']!,
                            genre: movie['genre']!,
                            duration: movie['duration']!,
                            isNew: movie['isNew'] == 'true',
                            sendMovies: widget.similarMovies,
                          );
                        },
                      ),
                    ),

                    SizedBox(height: 20),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
