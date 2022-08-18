// Copyright (c) 2022, Very Good Ventures
// https://verygood.ventures
//
// Use of this source code is governed by an MIT-style
// license that can be found in the LICENSE file or at
// https://opensource.org/licenses/MIT.

// ignore_for_file: prefer_const_constructors
import 'package:test/test.dart';
import 'package:postgres_frog_data_source/postgres_frogs_data_source.yml.dart';

void main() {
  group('PostgresFrogDataSource', () {
    test('can be instantiated', () {
      expect(PostgresFrogDataSource(), isNotNull);
    });
  });
}
