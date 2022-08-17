import 'value_failures.dart';

class UnexpectedValueError extends Error {
  UnexpectedValueError(this.valueFailure);

  final ValueFailure valueFailure;

  @override
  String toString() {
    return Error.safeToString(
        'Encountered a ValueFailure. Failure was: $valueFailure');
  }
}
