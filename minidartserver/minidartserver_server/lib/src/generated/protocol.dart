/* AUTOMATICALLY GENERATED CODE DO NOT MODIFY */
/*   To generate run: "serverpod generate"    */

// ignore_for_file: implementation_imports
// ignore_for_file: library_private_types_in_public_api
// ignore_for_file: non_constant_identifier_names
// ignore_for_file: public_member_api_docs
// ignore_for_file: type_literal_in_constant_pattern
// ignore_for_file: use_super_parameters

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:serverpod/serverpod.dart' as _i1;
import 'package:serverpod/protocol.dart' as _i2;
import 'genre.dart' as _i3;
import 'now_playing_movie.dart' as _i4;
import 'package:minidartserver_server/src/generated/now_playing_movie.dart'
    as _i5;
export 'genre.dart';
export 'now_playing_movie.dart';

class Protocol extends _i1.SerializationManagerServer {
  Protocol._();

  factory Protocol() => _instance;

  static final Protocol _instance = Protocol._();

  static final List<_i2.TableDefinition> targetTableDefinitions = [
    ..._i2.Protocol.targetTableDefinitions
  ];

  @override
  T deserialize<T>(
    dynamic data, [
    Type? t,
  ]) {
    t ??= T;
    if (t == _i3.Genre) {
      return _i3.Genre.fromJson(data) as T;
    }
    if (t == _i4.NowPlayingMovie) {
      return _i4.NowPlayingMovie.fromJson(data) as T;
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
    try {
      return _i2.Protocol().deserialize<T>(data, t);
    } on _i1.DeserializationTypeNotFoundException catch (_) {}
    return super.deserialize<T>(data, t);
  }

  @override
  String? getClassNameForObject(Object? data) {
    String? className = super.getClassNameForObject(data);
    if (className != null) return className;
    if (data is _i3.Genre) {
      return 'Genre';
    }
    if (data is _i4.NowPlayingMovie) {
      return 'NowPlayingMovie';
    }
    className = _i2.Protocol().getClassNameForObject(data);
    if (className != null) {
      return 'serverpod.$className';
    }
    return null;
  }

  @override
  dynamic deserializeByClassName(Map<String, dynamic> data) {
    var dataClassName = data['className'];
    if (dataClassName is! String) {
      return super.deserializeByClassName(data);
    }
    if (dataClassName == 'Genre') {
      return deserialize<_i3.Genre>(data['data']);
    }
    if (dataClassName == 'NowPlayingMovie') {
      return deserialize<_i4.NowPlayingMovie>(data['data']);
    }
    if (dataClassName.startsWith('serverpod.')) {
      data['className'] = dataClassName.substring(10);
      return _i2.Protocol().deserializeByClassName(data);
    }
    return super.deserializeByClassName(data);
  }

  @override
  _i1.Table? getTableForType(Type t) {
    {
      var table = _i2.Protocol().getTableForType(t);
      if (table != null) {
        return table;
      }
    }
    return null;
  }

  @override
  List<_i2.TableDefinition> getTargetTableDefinitions() =>
      targetTableDefinitions;

  @override
  String getModuleName() => 'minidartserver';
}
