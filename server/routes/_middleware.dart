import 'package:dart_frog/dart_frog.dart';
import 'package:frogs_data_source/frogs_data_source.dart';
import 'package:postgres_frogs_data_source/postgres_frogs_data_source.dart';

final _dataSource = PostgresFrogsDataSource();

Handler middleware(Handler handler) {
  return handler
      .use(requestLogger())
      .use(provider<FrogsDataSource>((_) => _dataSource));
}
