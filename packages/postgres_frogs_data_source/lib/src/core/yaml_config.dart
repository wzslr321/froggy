import 'dart:io';

import 'package:yaml/yaml.dart' as yaml;

import 'yml_value_objects.dart';

class YamlConfig {
  YamlConfig({
    yaml.YamlMap? config,
  }) : _config = config ?? _loadConfig();

  final yaml.YamlMap _config;

  String get host {
    final host = YmlString(_config['host'] as String);
    return host.getOrCrash();
  }

  int get port {
    final port = _config['port'] as YmlInt;
    return port.getOrCrash();
  }

  String get dbName {
    final dbName = _config['dbname'] as YmlString;
    return dbName.getOrCrash();
  }

  String get username {
    final username = _config['username'] as YmlString;
    return username.getOrCrash();
  }

  String get password {
    final password = _config['password'] as YmlString;
    return password.getOrCrash();
  }
}

final yamlConfigFile = File(
    'host: localhost port: 5432 dbname: frogs user: frog password: froggy');

yaml.YamlMap _loadConfig() {
  print(yamlConfigFile);

  final yamlString =
      'host: localhost'; //yamlConfigFile.readAsStringSync();

  final config = yaml.loadYaml(yamlString) as yaml.YamlMap;

  return config;
}
