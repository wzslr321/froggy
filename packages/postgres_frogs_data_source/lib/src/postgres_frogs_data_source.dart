// Copyright (c) 2022, Very Good Ventures
// https://verygood.ventures
//
// Use of this source code is governed by an MIT-style
// license that can be found in the LICENSE file or at
// https://opensource.org/licenses/MIT.

import 'dart:io';

import 'package:dartz/dartz.dart';
import 'package:frogs_data_source/frogs_data_source.dart';
import 'package:frogs_data_source/src/core/typedefs.dart';
import 'package:frogs_data_source/src/models/frog.dart';
import 'package:postgres/postgres.dart';

import 'core/yaml_config.dart';

final _config = YamlConfig();

class PostgresFrogsDataSource implements FrogsDataSource {
  PostgresFrogsDataSource({
    PostgreSQLConnection? connection,
  }) : _connection = connection ??
            PostgreSQLConnection(
              _config.host,
              _config.port,
              _config.dbName,
              username: _config.username,
              password: _config.password,
            );


  final PostgreSQLConnection _connection;

  @override
  RequestResult<Unit> create(Frog frog) async {
    await _connection.open();
    await _connection.execute(
      'CREATE TABLE IF NOT EXISTS frogs (id SERIAL PRIMARY KEY, name VARCHAR(255))',
    );

    // idk how i should close it properly, docs bad
    await _connection.close();

    return right(unit);
  }

  @override
  RequestResult<Unit> delete() {
    // TODO: implement delete
    throw UnimplementedError();
  }

  @override
  RequestResult<Frog> read() {
    // TODO: implement read
    throw UnimplementedError();
  }

  @override
  RequestResult<Frog> readAll() {
    // TODO: implement readAll
    throw UnimplementedError();
  }

  @override
  RequestResult<Unit> update() {
    // TODO: implement update
    throw UnimplementedError();
  }
}
