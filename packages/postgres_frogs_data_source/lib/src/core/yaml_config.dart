import 'dart:io';

import 'package:postgres_frog_data_source/src/core/constants.dart';
import 'package:postgres_frog_data_source/src/core/value_objects.dart';
import 'package:postgres_frog_data_source/src/core/yml_value_objects.dart';
import 'package:yaml/yaml.dart' as yaml;

class YamlConfig {
  YamlConfig({
    Map<String, dynamic>? config,
  }) : _config = config ?? _loadConfig();

  final Map<String, dynamic> _config;

  String get host {
    final host = _config['host'] as YmlString;
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

Map<String, dynamic> _loadConfig() {
  final yamlConfigFile = File(yamlConfigFilePath);
  final yamlString = yamlConfigFile.readAsStringSync();

  final config = yaml.loadYaml(yamlString);

  return config as Map<String, dynamic>;
}
