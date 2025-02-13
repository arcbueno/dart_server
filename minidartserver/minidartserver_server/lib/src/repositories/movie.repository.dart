import 'package:dio/dio.dart';
import 'package:minidartserver_server/src/generated/exceptions/unauthorized.exception.dart';
import 'package:minidartserver_server/src/generated/now_playing_movie.dart';
import 'package:minidartserver_server/src/models/result.dart';

class MovieRepository {
  final Dio _dio;

  MovieRepository({required Dio dio}) : _dio = dio;

  Future<Result<List<NowPlayingMovie>>> getNowPlayingMovies() async {
    try {
      var response = await _dio.get(
        '/movie/now_playing?language=en-US&page=1',
      );

      if (response.data == null || response.data is! Map<String, dynamic>) {
        return Result.ok([]);
      }
      final movies = response.data['results'] = response.data['results']
          .map<NowPlayingMovie>(
            (movie) => NowPlayingMovie(
              id: movie['id'],
              title: movie['title'],
              description: movie['overview'],
              genres: [],
              posterUrl: movie['poster_path'],
            ),
          )
          .toList();

      return Result.ok(movies);
    } catch (error) {
      if (error is DioException) {
        if (error.response?.statusCode != null &&
            error.response?.statusCode == 401) {
          return Result.error(
              CustomException(errorCode: 401, message: 'Unauthorized'));
        } else {
          return Result.error(
            CustomException(
              message: 'An error occurred',
              errorCode: error.response?.statusCode,
            ),
          );
        }
      } else {
        return Result.error(
          CustomException(
            message: 'An error occurred',
            errorCode: 500,
          ),
        );
      }
    }
  }
}
