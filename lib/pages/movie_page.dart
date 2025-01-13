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
      imageUrl: 'https://m.media-amazon.com/images/M/MV5BMTM0MjUzNjkwMl5BMl5BanBnXkFtZTcwNjY0OTk1Mw@@._V1_.jpg',
    ),
    Movie(
      title: 'The Matrix',
      summary: 'A computer hacker learns from mysterious rebels about the true nature of his reality and his role in the war against its controllers.',
      imageUrl: 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQscJz2jJQ2Q4BJHx_WBSYqCVidQDu_Ir8U5w&s',
    ),
    Movie(
      title: 'Interstellar',
      summary: 'A team of explorers travel through a wormhole in space in an attempt to ensure humanity\'s survival.',
      imageUrl: 'data:image/jpeg;base64,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',
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Movie Selection right here !'),
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