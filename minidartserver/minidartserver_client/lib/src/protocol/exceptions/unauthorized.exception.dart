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

abstract class CustomException
    implements _i1.SerializableException, _i1.SerializableModel {
  CustomException._({
    String? message,
    int? errorCode,
  })  : message = message ?? 'Error has occurred',
        errorCode = errorCode ?? 1001;

  factory CustomException({
    String? message,
    int? errorCode,
  }) = _CustomExceptionImpl;

  factory CustomException.fromJson(Map<String, dynamic> jsonSerialization) {
    return CustomException(
      message: jsonSerialization['message'] as String,
      errorCode: jsonSerialization['errorCode'] as int,
    );
  }

  String message;

  int errorCode;

  CustomException copyWith({
    String? message,
    int? errorCode,
  });
  @override
  Map<String, dynamic> toJson() {
    return {
      'message': message,
      'errorCode': errorCode,
    };
  }

  @override
  String toString() {
    return _i1.SerializationManager.encode(this);
  }
}

class _CustomExceptionImpl extends CustomException {
  _CustomExceptionImpl({
    String? message,
    int? errorCode,
  }) : super._(
          message: message,
          errorCode: errorCode,
        );

  @override
  CustomException copyWith({
    String? message,
    int? errorCode,
  }) {
    return CustomException(
      message: message ?? this.message,
      errorCode: errorCode ?? this.errorCode,
    );
  }
}
