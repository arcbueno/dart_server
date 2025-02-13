import 'package:minidartserver_server/service_locator.dart';
import 'package:minidartserver_server/src/generated/now_playing_movie.dart';
import 'package:minidartserver_server/src/models/result.dart';
import 'package:minidartserver_server/src/repositories/movie.repository.dart';
import 'package:serverpod/serverpod.dart';

class MoviesEndpoint extends Endpoint {
  MoviesEndpoint();

  Future<String> ping(Session session) async {
    return 'pong';
  }

  Future<List<NowPlayingMovie>> nowPlaying(Session session) async {
    final result = await getIt.get<MovieRepository>().getNowPlayingMovies();
    switch (result) {
      case Ok():
        return result.value;
      case Error():
        throw result.error;
    }
  }
}
