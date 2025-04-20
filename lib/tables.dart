import 'package:drift/drift.dart';

class TableWithTimestamps extends Table {
  @override
  String get tableName => 'table_with_timestamps';

  IntColumn get id => integer().autoIncrement()();

  TextColumn get name => text().nullable()();

  DateTimeColumn get insertedAt => dateTime().nullable()();

  DateTimeColumn get updatedAt => dateTime().nullable()();
}

class TableWithDefault extends Table {
  @override
  String get tableName => 'table_with_default';

  IntColumn get id => integer().autoIncrement()();

  IntColumn get valueWithDefault => integer().withDefault(const Constant(0))();

  TextColumn get description => text().nullable()();
}
