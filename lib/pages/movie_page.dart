import 'package:flutter/material.dart';

void main() {
  runApp(Movie_Page());
}

class Movie_Page extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Movie Selection right here !',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MoviePage(),
    );
  }
}

class MoviePage extends StatelessWidget {
  final List<Movie> movies = [
    Movie(
      title: 'Inception',
      summary: 'A thief who steals corporate secrets through the use of dream-sharing technology is given the inverse task of planting an idea into the mind of a C.E.O.',
      imageUrl: 'https://example.com/inception.jpg',
    ),
    Movie(
      title: 'The Matrix',
      summary: 'A computer hacker learns from mysterious rebels about the true nature of his reality and his role in the war against its controllers.',
      imageUrl: 'https://example.com/matrix.jpg',
    ),
    Movie(
      title: 'Interstellar',
      summary: 'A team of explorers travel through a wormhole in space in an attempt to ensure humanity\'s survival.',
      imageUrl: 'https://example.com/interstellar.jpg',
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Movie Selection'),
      ),
      body: ListView.builder(
        itemCount: movies.length,
        itemBuilder: (context, index) {
          return Card(
            margin: EdgeInsets.all(10),
            child: ListTile(
              leading: Image.network(
                movies[index].imageUrl,
                width: 50,
                height: 50,
                fit: BoxFit.cover,
              ),
              title: Text(movies[index].title),
              subtitle: Text(movies[index].summary),
            ),
          );
        },
      ),
    );
  }
}

class Movie {
  final String title;
  final String summary;
  final String imageUrl;

  Movie({required this.title, required this.summary, required this.imageUrl});
}