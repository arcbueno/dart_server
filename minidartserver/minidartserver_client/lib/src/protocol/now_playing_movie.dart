/* AUTOMATICALLY GENERATED CODE DO NOT MODIFY */
/*   To generate run: "serverpod generate"    */

// ignore_for_file: implementation_imports
// ignore_for_file: library_private_types_in_public_api
// ignore_for_file: non_constant_identifier_names
// ignore_for_file: public_member_api_docs
// ignore_for_file: type_literal_in_constant_pattern
// ignore_for_file: use_super_parameters

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:serverpod_client/serverpod_client.dart' as _i1;
import 'genre.dart' as _i2;

abstract class NowPlayingMovie implements _i1.SerializableModel {
  NowPlayingMovie._({
    required this.id,
    required this.title,
    required this.description,
    required this.genres,
    required this.posterUrl,
  });

  factory NowPlayingMovie({
    required int id,
    required String title,
    required String description,
    required List<_i2.Genre> genres,
    required String posterUrl,
  }) = _NowPlayingMovieImpl;

  factory NowPlayingMovie.fromJson(Map<String, dynamic> jsonSerialization) {
    return NowPlayingMovie(
      id: jsonSerialization['id'] as int,
      title: jsonSerialization['title'] as String,
      description: jsonSerialization['description'] as String,
      genres: (jsonSerialization['genres'] as List)
          .map((e) => _i2.Genre.fromJson((e as Map<String, dynamic>)))
          .toList(),
      posterUrl: jsonSerialization['posterUrl'] as String,
    );
  }

  int id;

  String title;

  String description;

  List<_i2.Genre> genres;

  String posterUrl;

  NowPlayingMovie copyWith({
    int? id,
    String? title,
    String? description,
    List<_i2.Genre>? genres,
    String? posterUrl,
  });
  @override
  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'title': title,
      'description': description,
      'genres': genres.toJson(valueToJson: (v) => v.toJson()),
      'posterUrl': posterUrl,
    };
  }

  @override
  String toString() {
    return _i1.SerializationManager.encode(this);
  }
}

class _NowPlayingMovieImpl extends NowPlayingMovie {
  _NowPlayingMovieImpl({
    required int id,
    required String title,
    required String description,
    required List<_i2.Genre> genres,
    required String posterUrl,
  }) : super._(
          id: id,
          title: title,
          description: description,
          genres: genres,
          posterUrl: posterUrl,
        );

  @override
  NowPlayingMovie copyWith({
    int? id,
    String? title,
    String? description,
    List<_i2.Genre>? genres,
    String? posterUrl,
  }) {
    return NowPlayingMovie(
      id: id ?? this.id,
      title: title ?? this.title,
      description: description ?? this.description,
      genres: genres ?? this.genres.map((e0) => e0.copyWith()).toList(),
      posterUrl: posterUrl ?? this.posterUrl,
    );
  }
}
