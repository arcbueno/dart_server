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

abstract class Genre implements _i1.SerializableModel {
  Genre._({
    required this.id,
    required this.name,
  });

  factory Genre({
    required int id,
    required String name,
  }) = _GenreImpl;

  factory Genre.fromJson(Map<String, dynamic> jsonSerialization) {
    return Genre(
      id: jsonSerialization['id'] as int,
      name: jsonSerialization['name'] as String,
    );
  }

  int id;

  String name;

  Genre copyWith({
    int? id,
    String? name,
  });
  @override
  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'name': name,
    };
  }

  @override
  String toString() {
    return _i1.SerializationManager.encode(this);
  }
}

class _GenreImpl extends Genre {
  _GenreImpl({
    required int id,
    required String name,
  }) : super._(
          id: id,
          name: name,
        );

  @override
  Genre copyWith({
    int? id,
    String? name,
  }) {
    return Genre(
      id: id ?? this.id,
      name: name ?? this.name,
    );
  }
}
