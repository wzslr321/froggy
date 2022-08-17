// Copyright (c) 2022, Very Good Ventures
// https://verygood.ventures
//
// Use of this source code is governed by an MIT-style
// license that can be found in the LICENSE file or at
// https://opensource.org/licenses/MIT.

// ignore_for_file: prefer_const_constructors
import 'package:dartz/dartz.dart';
import 'package:frogs_data_source/frogs_data_source.dart';
import 'package:frogs_data_source/src/core/typedefs.dart';
import 'package:frogs_data_source/src/models/frog.dart';
import 'package:test/test.dart';

class _TestFrogsDataSource implements FrogsDataSource {
  @override
  RequestResult<Unit> create() => throw UnimplementedError();

  @override
  RequestResult<Unit> delete() => throw UnimplementedError();

  @override
  RequestResult<Frog> read() => throw UnimplementedError();

  @override
  RequestResult<Frog> readAll() => throw UnimplementedError();

  @override
  RequestResult<Unit> update() => throw UnimplementedError();
}

void main() {
  group('FrogsDataSource', () {
    test('can be implemented', () {
      expect(_TestFrogsDataSource(), isNotNull);
    });
  });
}
