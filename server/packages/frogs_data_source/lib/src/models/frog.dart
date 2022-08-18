import 'package:freezed_annotation/freezed_annotation.dart';

part 'frog.freezed.dart';
part 'frog.g.dart';

enum Mood {
  sad,
  happy,
  angry,
  hungry,
  tired
}

@freezed
class Frog with _$Frog {
  const factory Frog({
    required String name,
    required Mood mood,
    required DateTime creationDate,
  }) = _Frog;

  factory Frog.fromJson(Map<String, Object?> json) => _$FrogFromJson(json);
}
