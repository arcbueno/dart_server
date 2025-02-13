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
import 'exceptions/unauthorized.exception.dart' as _i2;
import 'genre.dart' as _i3;
import 'now_playing_movie.dart' as _i4;
import 'package:minidartserver_client/src/protocol/now_playing_movie.dart'
    as _i5;
export 'exceptions/unauthorized.exception.dart';
export 'genre.dart';
export 'now_playing_movie.dart';
export 'client.dart';

class Protocol extends _i1.SerializationManager {
  Protocol._();

  factory Protocol() => _instance;

  static final Protocol _instance = Protocol._();

  @override
  T deserialize<T>(
    dynamic data, [
    Type? t,
  ]) {
    t ??= T;
    if (t == _i2.CustomException) {
      return _i2.CustomException.fromJson(data) as T;
    }
    if (t == _i3.Genre) {
      return _i3.Genre.fromJson(data) as T;
    }
    if (t == _i4.NowPlayingMovie) {
      return _i4.NowPlayingMovie.fromJson(data) as T;
    }
    if (t == _i1.getType<_i2.CustomException?>()) {
      return (data != null ? _i2.CustomException.fromJson(data) : null) as T;
    }
    if (t == _i1.getType<_i3.Genre?>()) {
      return (data != null ? _i3.Genre.fromJson(data) : null) as T;
    }
    if (t == _i1.getType<_i4.NowPlayingMovie?>()) {
      return (data != null ? _i4.NowPlayingMovie.fromJson(data) : null) as T;
    }
    if (t == List<_i3.Genre>) {
      return (data as List).map((e) => deserialize<_i3.Genre>(e)).toList()
          as dynamic;
    }
    if (t == List<_i5.NowPlayingMovie>) {
      return (data as List)
          .map((e) => deserialize<_i5.NowPlayingMovie>(e))
          .toList() as dynamic;
    }
    return super.deserialize<T>(data, t);
  }

  @override
  String? getClassNameForObject(Object? data) {
    String? className = super.getClassNameForObject(data);
    if (className != null) return className;
    if (data is _i2.CustomException) {
      return 'CustomException';
    }
    if (data is _i3.Genre) {
      return 'Genre';
    }
    if (data is _i4.NowPlayingMovie) {
      return 'NowPlayingMovie';
    }
    return null;
  }

  @override
  dynamic deserializeByClassName(Map<String, dynamic> data) {
    var dataClassName = data['className'];
    if (dataClassName is! String) {
      return super.deserializeByClassName(data);
    }
    if (dataClassName == 'CustomException') {
      return deserialize<_i2.CustomException>(data['data']);
    }
    if (dataClassName == 'Genre') {
      return deserialize<_i3.Genre>(data['data']);
    }
    if (dataClassName == 'NowPlayingMovie') {
      return deserialize<_i4.NowPlayingMovie>(data['data']);
    }
    return super.deserializeByClassName(data);
  }
}
