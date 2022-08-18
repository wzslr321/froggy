import 'dart:io';

import 'package:dart_frog/dart_frog.dart';

Future<HttpServer> run(Handler handler, InternetAddress ip, int _) {
  const port = 9999;
  print('Listening on the port: $port');

  return serve(handler, ip, port);
}
