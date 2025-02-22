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
import 'dart:async' as _i2;
import 'package:minidartserver_client/src/protocol/now_playing_movie.dart'
    as _i3;
import 'protocol.dart' as _i4;

/// {@category Endpoint}
class EndpointMovies extends _i1.EndpointRef {
  EndpointMovies(_i1.EndpointCaller caller) : super(caller);

  @override
  String get name => 'movies';

  _i2.Future<String> ping() => caller.callServerEndpoint<String>(
        'movies',
        'ping',
        {},
      );

  _i2.Future<List<_i3.NowPlayingMovie>> nowPlaying() =>
      caller.callServerEndpoint<List<_i3.NowPlayingMovie>>(
        'movies',
        'nowPlaying',
        {},
      );
}

class Client extends _i1.ServerpodClientShared {
  Client(
    String host, {
    dynamic securityContext,
    _i1.AuthenticationKeyManager? authenticationKeyManager,
    Duration? streamingConnectionTimeout,
    Duration? connectionTimeout,
    Function(
      _i1.MethodCallContext,
      Object,
      StackTrace,
    )? onFailedCall,
    Function(_i1.MethodCallContext)? onSucceededCall,
    bool? disconnectStreamsOnLostInternetConnection,
  }) : super(
          host,
          _i4.Protocol(),
          securityContext: securityContext,
          authenticationKeyManager: authenticationKeyManager,
          streamingConnectionTimeout: streamingConnectionTimeout,
          connectionTimeout: connectionTimeout,
          onFailedCall: onFailedCall,
          onSucceededCall: onSucceededCall,
          disconnectStreamsOnLostInternetConnection:
              disconnectStreamsOnLostInternetConnection,
        ) {
    movies = EndpointMovies(this);
  }

  late final EndpointMovies movies;

  @override
  Map<String, _i1.EndpointRef> get endpointRefLookup => {'movies': movies};

  @override
  Map<String, _i1.ModuleEndpointCaller> get moduleLookup => {};
}
