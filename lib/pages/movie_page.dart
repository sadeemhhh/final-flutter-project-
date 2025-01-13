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
      home: Movie_Page(),
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
      imageUrl: 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTE2bwYVDPZkWLH7QhDPz9lZ4-xD9uQ2i8Yqg&s',
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