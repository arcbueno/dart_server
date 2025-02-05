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
import '../endpoints/movies.endpoint.dart' as _i2;

class Endpoints extends _i1.EndpointDispatch {
  @override
  void initializeEndpoints(_i1.Server server) {
    var endpoints = <String, _i1.Endpoint>{
      'movies': _i2.MoviesEndpoint()
        ..initialize(
          server,
          'movies',
          null,
        )
    };
    connectors['movies'] = _i1.EndpointConnector(
      name: 'movies',
      endpoint: endpoints['movies']!,
      methodConnectors: {
        'ping': _i1.MethodConnector(
          name: 'ping',
          params: {},
          call: (
            _i1.Session session,
            Map<String, dynamic> params,
          ) async =>
              (endpoints['movies'] as _i2.MoviesEndpoint).ping(session),
        ),
        'nowPlaying': _i1.MethodConnector(
          name: 'nowPlaying',
          params: {},
          call: (
            _i1.Session session,
            Map<String, dynamic> params,
          ) async =>
              (endpoints['movies'] as _i2.MoviesEndpoint).nowPlaying(session),
        ),
      },
    );
  }
}
