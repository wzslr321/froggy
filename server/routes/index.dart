import 'dart:io';

import 'package:dart_frog/dart_frog.dart';
import 'package:frogs_data_source/frogs_data_source.dart';

Future<Response> onRequest(RequestContext context) async {
  return _post(context);
}

Future<Response> _post(RequestContext context) async {
  final dataSource = context.read<FrogsDataSource>();
  final frog = Frog.fromJson(await context.request.json());

  return Response.json(
    statusCode: HttpStatus.created,
    body: await dataSource.create(frog),
  );
}
