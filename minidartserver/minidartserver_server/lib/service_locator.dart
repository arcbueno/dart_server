import 'package:dio/dio.dart';
import 'package:get_it/get_it.dart';
import 'package:minidartserver_server/src/repositories/movie.repository.dart';

final getIt = GetIt.instance;

void setupServiceLocator({required String apiToken}) {
  getIt.registerSingleton<Dio>(
    Dio(
      BaseOptions(
        baseUrl: 'https://api.themoviedb.org/3',
        headers: {
          'Authorization': 'Bearer $apiToken',
        },
      ),
    ),
  );
  getIt.registerFactory<MovieRepository>(
    () => MovieRepository(
      dio: getIt.get<Dio>(),
    ),
  );
}
