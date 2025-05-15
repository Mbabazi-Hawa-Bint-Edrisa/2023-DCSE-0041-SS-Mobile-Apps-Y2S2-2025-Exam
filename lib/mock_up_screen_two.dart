import 'package:flutter/material.dart';

class MockUpScreenTwo extends StatelessWidget {
  const MockUpScreenTwo({super.key});

  @override
  Widget build(BuildContext context) {
    final List<Map<String, String>> popularMovies = [
      {
        'title': 'Birds of Prey',
        'genre': 'Action, Adventure, Crime, Drama',
        'rating': '7.2',
        'posterUrl': 'https://imageio.forbes.com/specials-images/imageserve/5d810c3f22254b0008e0a81d/-Birds-of-Prey--poster/960x0.jpg?format=jpg&width=960',
      },
      {
        'title': 'Red Sparrow',
        'genre': 'Mystery, Thriller',
        'rating': '6.5',
        'posterUrl': 'https://m.media-amazon.com/images/M/MV5BMTA3MDkxOTc4NDdeQTJeQWpwZ15BbWU4MDAxNzgyNTQz._V1_.jpg',
      },
      {
        'title': 'Jumanji: The Next Level',
        'genre': 'Action, Adventure, Comedy',
        'rating': '6.7',
        'posterUrl': 'https://cdn11.bigcommerce.com/s-4c994/images/stencil/1280x1280/products/1792/2992/Jumanji_Poster__73448.1516852416.jpg?c=2',
      },
    ];

    final List<Map<String, String>> nowPlayingMovies = [
      {
        'title': 'To All the Boys: P.S. I Still Love You',
        'genre': 'Romance, Comedy',
        'rating': '6.9',
        'posterUrl': 'https://m.media-amazon.com/images/I/71BRR1tmDRL._AC_UF894%2C1000_QL80_.jpg',
      },
      {
        'title': 'Ford v Ferrari',
        'genre': 'Action, Drama',
        'rating': '7.2',
        'posterUrl': 'https://m.media-amazon.com/images/I/714Z36vaKsL.jpg',
      },
      {
        'title': 'Parasite',
        'genre': 'Drama, Thriller',
        'rating': '8.5',
        'posterUrl': 'https://upload.wikimedia.org/wikipedia/en/thumb/f/f3/Parasite_%282019_film%29.png/220px-Parasite_%282019_film%29.png',
      },
    ];

    final jumanjiMovie = popularMovies.firstWhere(
      (movie) => movie['title'] == 'Jumanji: The Next Level',
      orElse: () => popularMovies[0],
    );

    return Scaffold(
      appBar: AppBar(
        
        title: Row(
          children: [
            ClipRRect(
              borderRadius: BorderRadius.circular(8.0),
              child: Image.network(
                jumanjiMovie['posterUrl']!,
                width: 40,
                height: 60,
                fit: BoxFit.cover,
                errorBuilder: (context, error, stackTrace) {
                  return Container(
                    width: 40,
                    height: 60,
                    color: Colors.grey,
                    child: const Icon(Icons.error, color: Colors.white),
                  );
                },
              ),
            ),
            const SizedBox(width: 16.0),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    jumanjiMovie['title']!,
                    style: const TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                    ),
                    overflow: TextOverflow.ellipsis,
                  ),
                  const SizedBox(height: 4.0),
                  Text(
                    jumanjiMovie['genre']!,
                    style: const TextStyle(
                      fontSize: 12,
                      color: Colors.white70,
                    ),
                    overflow: TextOverflow.ellipsis,
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Card(
              margin: EdgeInsets.zero,
              shape: const RoundedRectangleBorder(
                borderRadius: BorderRadius.vertical(bottom: Radius.circular(50)),
              ),
              child: Container(
                width: double.infinity,
                padding: const EdgeInsets.all(16.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Text(
                      "What's Popular",
                      style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    const SizedBox(height: 16.0),
                    SizedBox(
                      height: 220, // Increased height to accommodate title
                      child: ListView.builder(
                        scrollDirection: Axis.horizontal,
                        itemCount: popularMovies.length,
                        itemBuilder: (context, index) {
                          final movie = popularMovies[index];
                          return Container(
                            width: 120,
                            margin: const EdgeInsets.only(right: 16.0),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                ClipRRect(
                                  borderRadius: BorderRadius.circular(8.0),
                                  child: Image.network(
                                    movie['posterUrl']!,
                                    width: 120,
                                    height: 150,
                                    fit: BoxFit.cover,
                                    errorBuilder: (context, error, stackTrace) {
                                      return Container(
                                        width: 120,
                                        height: 150,
                                        color: Colors.grey,
                                        child: const Icon(Icons.error, color: Colors.white),
                                      );
                                    },
                                  ),
                                ),
                                const SizedBox(height: 4.0),
                                Text(
                                  movie['title']!,
                                  style: const TextStyle(fontSize: 14, fontWeight: FontWeight.bold),
                                  overflow: TextOverflow.ellipsis,
                                ),
                                const SizedBox(height: 2.0),
                                Text(
                                  'Rating: ${movie['rating']}',
                                  style: const TextStyle(fontSize: 12),
                                  overflow: TextOverflow.ellipsis,
                                ),
                                Text(
                                  movie['genre']!,
                                  style: const TextStyle(fontSize: 12),
                                  overflow: TextOverflow.ellipsis,
                                ),
                              ],
                            ),
                          );
                        },
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text(
                    "Now Playing",
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  const SizedBox(height: 16.0),
                  SizedBox(
                    height: 220, // Set a height for horizontal list
                    child: ListView.builder(
                      scrollDirection: Axis.horizontal,
                      itemCount: nowPlayingMovies.length,
                      itemBuilder: (context, index) {
                        final movie = nowPlayingMovies[index];
                        return Container(
                          width: 120, // Set a width for each item
                          margin: const EdgeInsets.only(right: 16.0),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              ClipRRect(
                                borderRadius: BorderRadius.circular(8.0),
                                child: Image.network(
                                  movie['posterUrl']!,
                                  width: 120,
                                  height: 150,
                                  fit: BoxFit.cover,
                                  errorBuilder: (context, error, stackTrace) {
                                    return Container(
                                      width: 120,
                                      height: 150,
                                      color: Colors.grey,
                                      child: const Icon(Icons.error, color: Colors.white),
                                    );
                                  },
                                ),
                              ),
                              const SizedBox(height: 4.0),
                              Text(
                                movie['title']!,
                                style: const TextStyle(
                                  fontSize: 14,
                                  fontWeight: FontWeight.bold,
                                ),
                                overflow: TextOverflow.ellipsis,
                              ),
                              const SizedBox(height: 2.0),
                              Text(
                                'Rating: ${movie['rating']}',
                                style: const TextStyle(fontSize: 12),
                                overflow: TextOverflow.ellipsis,
                              ),
                              Text(
                                movie['genre']!,
                                style: const TextStyle(fontSize: 12),
                                overflow: TextOverflow.ellipsis,
                              ),
                            ],
                          ),
                        );
                      },
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
