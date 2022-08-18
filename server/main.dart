import 'dart:io';

import 'package:dart_frog/dart_frog.dart';

Future<HttpServer> run(Handler handler, InternetAddress ip, int _) {
  print('Listening on the port: $port');

  return serve(handler, ip, port);
}
