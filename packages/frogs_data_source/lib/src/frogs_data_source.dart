import 'package:dartz/dartz.dart';
import 'package:frogs_data_source/src/core/typedefs.dart';

import 'package:frogs_data_source/src/models/frog.dart';

abstract class FrogsDataSource {
  RequestResult<Unit> create();
  RequestResult<Frog> readAll();
  RequestResult<Frog> read();
  RequestResult<Unit> update();
  RequestResult<Unit> delete();
}