import 'package:minidartserver_server/service_locator.dart';
import 'package:serverpod/serverpod.dart';

import 'src/generated/protocol.dart';
import 'src/generated/endpoints.dart';

// This is the starting point of your Serverpod server.
void run(List<String> args) async {
  final pod = Serverpod(
    args,
    Protocol(),
    Endpoints(),
  );

  final apiToken = pod.getPassword('apiToken');
  if (apiToken == null) {
    print('No API token provided. Please provide an API token');
    return;
  }

  setupServiceLocator(apiToken: apiToken);

  // Start the server.
  await pod.start();
}
