import 'dart:io';

import 'package:yaml/yaml.dart';

import 'yml_value_objects.dart';

class YamlConfig {
  YamlConfig({
    YamlMap? config,
  }) : _config = config ?? _loadConfig();

  final YamlMap _config;

  String get host {
    final host = YmlString(_config['host'] as String);
    return host.getOrCrash();
  }

  int get port {
    final port = YmlInt(int.parse(_config['port'] as String));
    return port.getOrCrash();
  }

  String get dbName {
    final dbName = YmlString(_config['dbname'] as String);
    return dbName.getOrCrash();
  }

  String get username {
    final username = YmlString(_config['username'] as String);
    return username.getOrCrash();
  }

  String get password {
    final password = YmlString(_config['password'] as String);
    return password.getOrCrash();
  }
}

YamlMap _loadConfig() {
  final yamlConfigFile = File(
      '/Users/wiktor/development/personal/froggy/packages/postgres_frogs_data_source/lib/src/core/config.yaml');

  final yamlString = yamlConfigFile.readAsStringSync();

  final config = loadYaml(yamlString) as YamlMap;

  return config;
}
