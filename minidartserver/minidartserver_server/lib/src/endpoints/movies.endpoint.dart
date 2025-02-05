import 'package:minidartserver_server/src/generated/now_playing_movie.dart';
import 'package:serverpod/serverpod.dart';

class MoviesEndpoint extends Endpoint {
  Future<String> ping(Session session) async {
    return 'pong';
  }

  Future<List<NowPlayingMovie>> nowPlaying(Session session) {
    return Future.value(
      [
        NowPlayingMovie(
          id: 1,
          title: 'The Matrix',
          description:
              'A computer hacker learns from mysterious rebels about the true nature of his reality and his role in the war against its controllers.',
          genres: [],
          posterUrl:
              'https://image.tmdb.org/t/p/w500/7Qy3Kvp0KoS6a6G3k9ZkL6B7Zp3.jpg',
        ),
      ],
    );
  }
}
