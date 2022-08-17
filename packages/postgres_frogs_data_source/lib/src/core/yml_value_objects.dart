import 'package:dartz/dartz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'value_objects.dart';
import 'value_failures.dart';

@immutable
class YmlString extends ValueObject<String> {
  const YmlString._(this.value);

  factory YmlString(String value){
    return YmlString._(right(value));
  }

  @override
  final Either<ValueFailure<String>, String> value;
}

@immutable
class YmlInt extends ValueObject<int> {
  const YmlInt._(this.value);

  factory YmlInt(int value) {
    return YmlInt._(right(value));
  }

  @override
  final Either<ValueFailure<int>, int> value;
}
