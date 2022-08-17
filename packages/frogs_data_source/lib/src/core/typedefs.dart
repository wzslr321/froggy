import 'package:dartz/dartz.dart';
import 'package:frogs_data_source/src/core/request_failure.dart';

typedef RequestResult<T> = Either<RequestFailure, T>;