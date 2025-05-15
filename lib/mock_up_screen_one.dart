import 'package:flutter/material.dart';

class MockUpScreenOne extends StatelessWidget {
  const MockUpScreenOne({super.key});

  @override
  Widget build(BuildContext context) {
    final List<Map<String, String>> movies = [
      {
        'title': 'To All the Boys: P.S. I Still Love You',
        'year': '2019',
        'duration': '1h 48m',
        'genre': 'Romance, Comedy',
        'description': 'Lara Jean and Peter have just taken their relationship from pretend to officially official when another recipient of one of her old love letters enters the picture.',
        'rating': '7.2',
        'posterUrl': 'https://www.google.com/imgres?q=to%20all%20boys%20i%20loved%20before%20poster&imgurl=https%3A%2F%2Fm.media-amazon.com%2Fimages%2FM%2FMV5BZGVlMGUwNmYtZjY2YS00NGUwLWE2NjYtZThlMzVjMzRkYjM0XkEyXkFqcGc%40._V1_.jpg&imgrefurl=https%3A%2F%2Fwww.imdb.com%2Ftitle%2Ftt3846674%2F&docid=OA86bAoeVjdfSM&tbnid=CK2P4RZUuWgpcM&vet=12ahUKEwjLoKLO0KWNAxVzUaQEHTn3GpQQM3oECBwQAA..i&w=1500&h=2222&hcb=2&ved=2ahUKEwjLoKLO0KWNAxVzUaQEHTn3GpQQM3oECBwQAA',
      },
      {
        'title': 'Baby Driver',
        'year': '2019',
        'duration': '1h 53m',
        'genre': 'Car Action, Crime, Drama',
        'description': 'After being coerced into working for a crime boss, a young getaway driver finds himself taking part in a heist doomed to fail.',
        'rating': '7.2',
        'posterUrl': 'https://www.google.com/imgres?q=baby%20driver%20poster&imgurl=https%3A%2F%2Fm.media-amazon.com%2Fimages%2FM%2FMV5BMjM3MjQ1MzkxNl5BMl5BanBnXkFtZTgwODk1ODgyMjI%40._V1_.jpg&imgrefurl=https%3A%2F%2Fwww.imdb.com%2Ftitle%2Ftt3890160%2F&docid=mV9oU1NFo9gAkM&tbnid=xDuaRUvccrdmFM&vet=12ahUKEwioiI_q0KWNAxWjR6QEHVwLCh0QM3oECBoQAA..i&w=1382&h=2048&hcb=2&ved=2ahUKEwioiI_q0KWNAxWjR6QEHVwLCh0QM3oECBoQAA',
      },
      {
        'title': 'John Wick',
        'year': '2019',
        'duration': '2h 10m',
        'genre': 'Action, Crime, Thriller',
        'description': 'An ex-hitman comes out of retirement to track down the gangsters who took everything from him.',
        'rating': '7.2',
        'posterUrl': 'https://www.google.com/imgres?q=john%20wick%20poster&imgurl=https%3A%2F%2Fm.media-amazon.com%2Fimages%2FM%2FMV5BMTU2NjA1ODgzMF5BMl5BanBnXkFtZTgwMTM2MTI4MjE%40._V1_.jpg&imgrefurl=https%3A%2F%2Fwww.imdb.com%2Ftitle%2Ftt2911666%2F&docid=MSALx3sZMUhxtM&tbnid=cCy9TjOWl5ZoYM&vet=12ahUKEwith4X70KWNAxWbKvsDHdhaNV0QM3oECBcQAA..i&w=1365&h=2048&hcb=2&ved=2ahUKEwith4X70KWNAxWbKvsDHdhaNV0QM3oECBcQAA',
      },
      {
        'title': 'Exit',
        'year': '2019',
        'duration': '2h 10m',
        'genre': 'Action, Comedy',
        'description': 'A jobless young man is forced to use all of his rock climbing skills to save his neighborhood from a mysterious gas attack.',
        'rating': '7.2',
        'posterUrl': 'https://www.google.com/imgres?q=exit%20movie%20poster&imgurl=https%3A%2F%2Fm.media-amazon.com%2Fimages%2FM%2FMV5BNjYyZTliZTEtMmU5Yy00YTdjLTllOWMtYmM3NDk5YjAxMDAwXkEyXkFqcGc%40._V1_FMjpg_UX1000_.jpg&imgrefurl=https%3A%2F%2Fwww.imdb.com%2Ftitle%2Ftt33292319%2F&docid=nBkIs8bTNDBnSM&tbnid=tHfT7hU1nDrvlM&vet=12ahUKEwjp-IPq0aWNAxUkK_sDHaeCLOgQM3oECBoQAA..i&w=1000&h=1250&hcb=2&ved=2ahUKEwjp-IPq0aWNAxUkK_sDHaeCLOgQM3oECBoQAA',
      },
    ];

    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(MediaQuery.of(context).size.height * 0.25),
        child: AppBar(
          backgroundColor: Colors.deepPurpleAccent,
          shape: const RoundedRectangleBorder(
            borderRadius: BorderRadius.vertical(
              bottom: Radius.circular(50),
            ),
          ),
          flexibleSpace: Padding(
            padding: const EdgeInsets.only(top: 40.0, left: 16.0, right: 16.0, bottom: 20.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  children: [
                    ClipRRect(
                      borderRadius: BorderRadius.circular(8.0),
                      child: Image.network(
                        'https://www.google.com/imgres?q=tmdb&imgurl=https%3A%2F%2Fplay-lh.googleusercontent.com%2F8oYvHLFp2-swlnr1RCOlaXH_H_In9PHdQz9KszyOHPq7o-Hya_qlqcZO6vG8Bm4xzjk&imgrefurl=https%3A%2F%2Fplay.google.com%2Fstore%2Fapps%2Fdetails%3Fid%3Dcom.irfangujjar.tmdb&docid=Y5X5ZiZBqmwX3M&tbnid=TKBkezXD3PLA6M&vet=12ahUKEwif66OWz6WNAxUncaQEHQmRG5IQM3oECBYQAA..i&w=512&h=512&hcb=2&ved=2ahUKEwif66OWz6WNAxUncaQEHQmRG5IQM3oECBYQAA',
                        width: 40,
                        height: 40,
                        fit: BoxFit.cover,
                        errorBuilder: (context, error, stackTrace) {
                          return Container(
                            width: 40,
                            height: 40,
                            color: Colors.grey,
                            child: const Icon(Icons.error, color: Colors.white),
                          );
                        },
                      ),
                    ),
                    const SizedBox(width: 16.0),
                    const Expanded(
                      child: Text(
                        'Discover & Enjoy Your Favourite Movies',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 24,
                          fontWeight: FontWeight.bold,
                        ),
                        overflow: TextOverflow.ellipsis,
                      ),
                    ),
                  ],
                ),
                const SizedBox(height: 20.0),
                Container(
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(30.0),
                  ),
                  padding: const EdgeInsets.symmetric(horizontal: 16.0),
                  child: const TextField(
                    decoration: InputDecoration(
                      hintText: 'Find your movies...',
                      border: InputBorder.none,
                      icon: Icon(Icons.search, color: Colors.grey),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.only(top: 0.0),
        child: Card(
          margin: EdgeInsets.zero,
          shape: const RoundedRectangleBorder(
            borderRadius: BorderRadius.vertical(top: Radius.circular(0)),
          ),
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.all(16.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    ElevatedButton(onPressed: () {}, child: const Text('Popular')),
                    ElevatedButton(onPressed: () {}, child: const Text('Upcoming')),
                    ElevatedButton(onPressed: () {}, child: const Text('Now Playing')),
                  ],
                ),
              ),
              Expanded(
                child: ListView.builder(
                  itemCount: movies.length,
                  itemBuilder: (context, index) {
                    final movie = movies[index];
                    return Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 8.0),
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Stack(
                            children: [
                              ClipRRect(
                                borderRadius: BorderRadius.circular(8.0),
                                child: Image.network(
                                  movie['posterUrl']!,
                                  width: 100,
                                  height: 150,
                                  fit: BoxFit.cover,
                                  errorBuilder: (context, error, stackTrace) {
                                    return Container(
                                      width: 100,
                                      height: 150,
                                      color: Colors.grey,
                                      child: const Icon(Icons.error, color: Colors.white),
                                    );
                                  },
                                ),
                              ),
                              Positioned(
                                bottom: 5,
                                right: 5,
                                child: Container(
                                  padding: const EdgeInsets.all(4.0),
                                  decoration: const BoxDecoration(
                                    color: Colors.green,
                                    shape: BoxShape.circle,
                                  ),
                                  child: Text(
                                    movie['rating']!,
                                    style: const TextStyle(color: Colors.white, fontSize: 12),
                                  ),
                                ),
                              ),
                            ],
                          ),
                          const SizedBox(width: 16.0),
                          Expanded(
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  movie['title']!,
                                  style: const TextStyle(
                                    fontSize: 18,
                                    fontWeight: FontWeight.bold,
                                  ),
                                  overflow: TextOverflow.ellipsis,
                                ),
                                const SizedBox(height: 4.0),
                                Text('${movie['year']} | ${movie['duration']}'),
                                const SizedBox(height: 4.0),
                                Text(movie['genre']!),
                                const SizedBox(height: 7.2),
                                Text(
                                  movie['description']!,
                                  maxLines: 3,
                                  overflow: TextOverflow.ellipsis,
                                ),
                              ],
                            ),
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
      bottomNavigationBar: BottomNavigationBar(
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.movie),
            label: 'Movies',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.bookmark),
            label: 'Bookmark',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.account_circle),
            label: 'Account',
          ),
        ],
        currentIndex: 1,
        selectedItemColor: Colors.blue,
        unselectedItemColor: Colors.grey,
        showUnselectedLabels: true,
      ),
    );
  }
}
