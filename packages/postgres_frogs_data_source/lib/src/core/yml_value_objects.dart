import 'package:dartz/dartz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:postgres_frog_data_source/src/core/value_failures.dart';
import 'package:postgres_frog_data_source/src/core/value_objects.dart';

@immutable
class YmlString extends ValueObject<String> {
  const YmlString._(this.value);

  @override
  final Either<ValueFailure<String>, String> value;
}

@immutable
class YmlInt extends ValueObject<int> {
  const YmlInt._(this.value);

  @override
  final Either<ValueFailure<int>, int> value;
}
