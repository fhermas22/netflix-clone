import 'package:flutter/material.dart';
import 'package:netflix_clone/views/movie_details.dart';
import '../../routes/app_routes.dart';
import '../../theme/app_colors.dart';

class MovieCard extends StatelessWidget {
  final String image;
  final String title;
  final String genre;
  final String duration;
  final bool isNew;
  final dynamic sendMovies;

  const MovieCard({
    super.key,
    required this.image,
    required this.title,
    required this.genre,
    required this.duration,
    this.isNew = false,
    this.sendMovies,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => MovieDetails(
              movieTitle: title,
              moviePoster: image,
              movieGenre: genre,
              similarMovies: sendMovies
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
                  image: AssetImage(image),
                  fit: BoxFit.cover,
                ),
              ),
            ),

            const SizedBox(height: 6),

            // Titre
            SizedBox(
              width: 120,
              child: Text(
                title,
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
                '$genre • $duration',
                style: const TextStyle(
                  color: AppColors.textSecondary,
                  fontSize: 12,
                ),
              ),
            ),

            const SizedBox(height: 4),

            // Étiquette + bouton
            Row(
              children: [
                if (isNew)
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
                const Spacer(),
                const Icon(
                    Icons.play_circle_fill,
                    color: AppColors.iconDefault,
                    size: 20
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}