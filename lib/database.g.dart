// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'database.dart';

// ignore_for_file: type=lint
class $TableWithTimestampsTable extends TableWithTimestamps
    with TableInfo<$TableWithTimestampsTable, TableWithTimestamp> {
  @override
  final GeneratedDatabase attachedDatabase;
  final String? _alias;
  $TableWithTimestampsTable(this.attachedDatabase, [this._alias]);
  static const VerificationMeta _idMeta = const VerificationMeta('id');
  @override
  late final GeneratedColumn<int> id = GeneratedColumn<int>(
      'id', aliasedName, false,
      hasAutoIncrement: true,
      type: DriftSqlType.int,
      requiredDuringInsert: false,
      defaultConstraints:
          GeneratedColumn.constraintIsAlways('PRIMARY KEY AUTOINCREMENT'));
  static const VerificationMeta _nameMeta = const VerificationMeta('name');
  @override
  late final GeneratedColumn<String> name = GeneratedColumn<String>(
      'name', aliasedName, true,
      type: DriftSqlType.string, requiredDuringInsert: false);
  static const VerificationMeta _insertedAtMeta =
      const VerificationMeta('insertedAt');
  @override
  late final GeneratedColumn<DateTime> insertedAt = GeneratedColumn<DateTime>(
      'inserted_at', aliasedName, true,
      type: DriftSqlType.dateTime, requiredDuringInsert: false);
  static const VerificationMeta _updatedAtMeta =
      const VerificationMeta('updatedAt');
  @override
  late final GeneratedColumn<DateTime> updatedAt = GeneratedColumn<DateTime>(
      'updated_at', aliasedName, true,
      type: DriftSqlType.dateTime, requiredDuringInsert: false);
  @override
  List<GeneratedColumn> get $columns => [id, name, insertedAt, updatedAt];
  @override
  String get aliasedName => _alias ?? actualTableName;
  @override
  String get actualTableName => $name;
  static const String $name = 'table_with_timestamps';
  @override
  VerificationContext validateIntegrity(Insertable<TableWithTimestamp> instance,
      {bool isInserting = false}) {
    final context = VerificationContext();
    final data = instance.toColumns(true);
    if (data.containsKey('id')) {
      context.handle(_idMeta, id.isAcceptableOrUnknown(data['id']!, _idMeta));
    }
    if (data.containsKey('name')) {
      context.handle(
          _nameMeta, name.isAcceptableOrUnknown(data['name']!, _nameMeta));
    }
    if (data.containsKey('inserted_at')) {
      context.handle(
          _insertedAtMeta,
          insertedAt.isAcceptableOrUnknown(
              data['inserted_at']!, _insertedAtMeta));
    }
    if (data.containsKey('updated_at')) {
      context.handle(_updatedAtMeta,
          updatedAt.isAcceptableOrUnknown(data['updated_at']!, _updatedAtMeta));
    }
    return context;
  }

  @override
  Set<GeneratedColumn> get $primaryKey => {id};
  @override
  TableWithTimestamp map(Map<String, dynamic> data, {String? tablePrefix}) {
    final effectivePrefix = tablePrefix != null ? '$tablePrefix.' : '';
    return TableWithTimestamp(
      id: attachedDatabase.typeMapping
          .read(DriftSqlType.int, data['${effectivePrefix}id'])!,
      name: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}name']),
      insertedAt: attachedDatabase.typeMapping
          .read(DriftSqlType.dateTime, data['${effectivePrefix}inserted_at']),
      updatedAt: attachedDatabase.typeMapping
          .read(DriftSqlType.dateTime, data['${effectivePrefix}updated_at']),
    );
  }

  @override
  $TableWithTimestampsTable createAlias(String alias) {
    return $TableWithTimestampsTable(attachedDatabase, alias);
  }
}

class TableWithTimestamp extends DataClass
    implements Insertable<TableWithTimestamp> {
  final int id;
  final String? name;
  final DateTime? insertedAt;
  final DateTime? updatedAt;
  const TableWithTimestamp(
      {required this.id, this.name, this.insertedAt, this.updatedAt});
  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    map['id'] = Variable<int>(id);
    if (!nullToAbsent || name != null) {
      map['name'] = Variable<String>(name);
    }
    if (!nullToAbsent || insertedAt != null) {
      map['inserted_at'] = Variable<DateTime>(insertedAt);
    }
    if (!nullToAbsent || updatedAt != null) {
      map['updated_at'] = Variable<DateTime>(updatedAt);
    }
    return map;
  }

  TableWithTimestampCompanion toCompanion(bool nullToAbsent) {
    return TableWithTimestampCompanion(
      id: Value(id),
      name: name == null && nullToAbsent ? const Value.absent() : Value(name),
      insertedAt: insertedAt == null && nullToAbsent
          ? const Value.absent()
          : Value(insertedAt),
      updatedAt: updatedAt == null && nullToAbsent
          ? const Value.absent()
          : Value(updatedAt),
    );
  }

  factory TableWithTimestamp.fromJson(Map<String, dynamic> json,
      {ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return TableWithTimestamp(
      id: serializer.fromJson<int>(json['id']),
      name: serializer.fromJson<String?>(json['name']),
      insertedAt: serializer.fromJson<DateTime?>(json['insertedAt']),
      updatedAt: serializer.fromJson<DateTime?>(json['updatedAt']),
    );
  }
  @override
  Map<String, dynamic> toJson({ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return <String, dynamic>{
      'id': serializer.toJson<int>(id),
      'name': serializer.toJson<String?>(name),
      'insertedAt': serializer.toJson<DateTime?>(insertedAt),
      'updatedAt': serializer.toJson<DateTime?>(updatedAt),
    };
  }

  TableWithTimestamp copyWith(
          {int? id,
          Value<String?> name = const Value.absent(),
          Value<DateTime?> insertedAt = const Value.absent(),
          Value<DateTime?> updatedAt = const Value.absent()}) =>
      TableWithTimestamp(
        id: id ?? this.id,
        name: name.present ? name.value : this.name,
        insertedAt: insertedAt.present ? insertedAt.value : this.insertedAt,
        updatedAt: updatedAt.present ? updatedAt.value : this.updatedAt,
      );
  TableWithTimestamp copyWithCompanion(TableWithTimestampCompanion data) {
    return TableWithTimestamp(
      id: data.id.present ? data.id.value : this.id,
      name: data.name.present ? data.name.value : this.name,
      insertedAt:
          data.insertedAt.present ? data.insertedAt.value : this.insertedAt,
      updatedAt: data.updatedAt.present ? data.updatedAt.value : this.updatedAt,
    );
  }

  @override
  String toString() {
    return (StringBuffer('TableWithTimestamp(')
          ..write('id: $id, ')
          ..write('name: $name, ')
          ..write('insertedAt: $insertedAt, ')
          ..write('updatedAt: $updatedAt')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode => Object.hash(id, name, insertedAt, updatedAt);
  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other is TableWithTimestamp &&
          other.id == this.id &&
          other.name == this.name &&
          other.insertedAt == this.insertedAt &&
          other.updatedAt == this.updatedAt);
}

class TableWithTimestampCompanion extends UpdateCompanion<TableWithTimestamp> {
  final Value<int> id;
  final Value<String?> name;
  final Value<DateTime?> insertedAt;
  final Value<DateTime?> updatedAt;
  const TableWithTimestampCompanion({
    this.id = const Value.absent(),
    this.name = const Value.absent(),
    this.insertedAt = const Value.absent(),
    this.updatedAt = const Value.absent(),
  });
  TableWithTimestampCompanion.insert({
    this.id = const Value.absent(),
    this.name = const Value.absent(),
    this.insertedAt = const Value.absent(),
    this.updatedAt = const Value.absent(),
  });
  static Insertable<TableWithTimestamp> custom({
    Expression<int>? id,
    Expression<String>? name,
    Expression<DateTime>? insertedAt,
    Expression<DateTime>? updatedAt,
  }) {
    return RawValuesInsertable({
      if (id != null) 'id': id,
      if (name != null) 'name': name,
      if (insertedAt != null) 'inserted_at': insertedAt,
      if (updatedAt != null) 'updated_at': updatedAt,
    });
  }

  TableWithTimestampCompanion copyWith(
      {Value<int>? id,
      Value<String?>? name,
      Value<DateTime?>? insertedAt,
      Value<DateTime?>? updatedAt}) {
    return TableWithTimestampCompanion(
      id: id ?? this.id,
      name: name ?? this.name,
      insertedAt: insertedAt ?? this.insertedAt,
      updatedAt: updatedAt ?? this.updatedAt,
    );
  }

  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (id.present) {
      map['id'] = Variable<int>(id.value);
    }
    if (name.present) {
      map['name'] = Variable<String>(name.value);
    }
    if (insertedAt.present) {
      map['inserted_at'] = Variable<DateTime>(insertedAt.value);
    }
    if (updatedAt.present) {
      map['updated_at'] = Variable<DateTime>(updatedAt.value);
    }
    return map;
  }

  @override
  String toString() {
    return (StringBuffer('TableWithTimestampCompanion(')
          ..write('id: $id, ')
          ..write('name: $name, ')
          ..write('insertedAt: $insertedAt, ')
          ..write('updatedAt: $updatedAt')
          ..write(')'))
        .toString();
  }
}

class $TableWithDefaultTable extends TableWithDefault
    with TableInfo<$TableWithDefaultTable, TableWithDefaultData> {
  @override
  final GeneratedDatabase attachedDatabase;
  final String? _alias;
  $TableWithDefaultTable(this.attachedDatabase, [this._alias]);
  static const VerificationMeta _idMeta = const VerificationMeta('id');
  @override
  late final GeneratedColumn<int> id = GeneratedColumn<int>(
      'id', aliasedName, false,
      hasAutoIncrement: true,
      type: DriftSqlType.int,
      requiredDuringInsert: false,
      defaultConstraints:
          GeneratedColumn.constraintIsAlways('PRIMARY KEY AUTOINCREMENT'));
  static const VerificationMeta _sendAttemptsMeta =
      const VerificationMeta('sendAttempts');
  @override
  late final GeneratedColumn<int> sendAttempts = GeneratedColumn<int>(
      'send_attempts', aliasedName, false,
      type: DriftSqlType.int,
      requiredDuringInsert: false,
      defaultValue: const Constant(0));
  static const VerificationMeta _descriptionMeta =
      const VerificationMeta('description');
  @override
  late final GeneratedColumn<String> description = GeneratedColumn<String>(
      'description', aliasedName, true,
      type: DriftSqlType.string, requiredDuringInsert: false);
  @override
  List<GeneratedColumn> get $columns => [id, sendAttempts, description];
  @override
  String get aliasedName => _alias ?? actualTableName;
  @override
  String get actualTableName => $name;
  static const String $name = 'table_with_default';
  @override
  VerificationContext validateIntegrity(
      Insertable<TableWithDefaultData> instance,
      {bool isInserting = false}) {
    final context = VerificationContext();
    final data = instance.toColumns(true);
    if (data.containsKey('id')) {
      context.handle(_idMeta, id.isAcceptableOrUnknown(data['id']!, _idMeta));
    }
    if (data.containsKey('send_attempts')) {
      context.handle(
          _sendAttemptsMeta,
          sendAttempts.isAcceptableOrUnknown(
              data['send_attempts']!, _sendAttemptsMeta));
    }
    if (data.containsKey('description')) {
      context.handle(
          _descriptionMeta,
          description.isAcceptableOrUnknown(
              data['description']!, _descriptionMeta));
    }
    return context;
  }

  @override
  Set<GeneratedColumn> get $primaryKey => {id};
  @override
  TableWithDefaultData map(Map<String, dynamic> data, {String? tablePrefix}) {
    final effectivePrefix = tablePrefix != null ? '$tablePrefix.' : '';
    return TableWithDefaultData(
      id: attachedDatabase.typeMapping
          .read(DriftSqlType.int, data['${effectivePrefix}id'])!,
      sendAttempts: attachedDatabase.typeMapping
          .read(DriftSqlType.int, data['${effectivePrefix}send_attempts'])!,
      description: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}description']),
    );
  }

  @override
  $TableWithDefaultTable createAlias(String alias) {
    return $TableWithDefaultTable(attachedDatabase, alias);
  }
}

class TableWithDefaultData extends DataClass
    implements Insertable<TableWithDefaultData> {
  final int id;
  final int sendAttempts;
  final String? description;
  const TableWithDefaultData(
      {required this.id, required this.sendAttempts, this.description});
  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    map['id'] = Variable<int>(id);
    map['send_attempts'] = Variable<int>(sendAttempts);
    if (!nullToAbsent || description != null) {
      map['description'] = Variable<String>(description);
    }
    return map;
  }

  TableWithDefaultDataCompanion toCompanion(bool nullToAbsent) {
    return TableWithDefaultDataCompanion(
      id: Value(id),
      sendAttempts: Value(sendAttempts),
      description: description == null && nullToAbsent
          ? const Value.absent()
          : Value(description),
    );
  }

  factory TableWithDefaultData.fromJson(Map<String, dynamic> json,
      {ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return TableWithDefaultData(
      id: serializer.fromJson<int>(json['id']),
      sendAttempts: serializer.fromJson<int>(json['sendAttempts']),
      description: serializer.fromJson<String?>(json['description']),
    );
  }
  @override
  Map<String, dynamic> toJson({ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return <String, dynamic>{
      'id': serializer.toJson<int>(id),
      'sendAttempts': serializer.toJson<int>(sendAttempts),
      'description': serializer.toJson<String?>(description),
    };
  }

  TableWithDefaultData copyWith(
          {int? id,
          int? sendAttempts,
          Value<String?> description = const Value.absent()}) =>
      TableWithDefaultData(
        id: id ?? this.id,
        sendAttempts: sendAttempts ?? this.sendAttempts,
        description: description.present ? description.value : this.description,
      );
  TableWithDefaultData copyWithCompanion(TableWithDefaultDataCompanion data) {
    return TableWithDefaultData(
      id: data.id.present ? data.id.value : this.id,
      sendAttempts: data.sendAttempts.present
          ? data.sendAttempts.value
          : this.sendAttempts,
      description:
          data.description.present ? data.description.value : this.description,
    );
  }

  @override
  String toString() {
    return (StringBuffer('TableWithDefaultData(')
          ..write('id: $id, ')
          ..write('sendAttempts: $sendAttempts, ')
          ..write('description: $description')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode => Object.hash(id, sendAttempts, description);
  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other is TableWithDefaultData &&
          other.id == this.id &&
          other.sendAttempts == this.sendAttempts &&
          other.description == this.description);
}

class TableWithDefaultDataCompanion
    extends UpdateCompanion<TableWithDefaultData> {
  final Value<int> id;
  final Value<int> sendAttempts;
  final Value<String?> description;
  const TableWithDefaultDataCompanion({
    this.id = const Value.absent(),
    this.sendAttempts = const Value.absent(),
    this.description = const Value.absent(),
  });
  TableWithDefaultDataCompanion.insert({
    this.id = const Value.absent(),
    this.sendAttempts = const Value.absent(),
    this.description = const Value.absent(),
  });
  static Insertable<TableWithDefaultData> custom({
    Expression<int>? id,
    Expression<int>? sendAttempts,
    Expression<String>? description,
  }) {
    return RawValuesInsertable({
      if (id != null) 'id': id,
      if (sendAttempts != null) 'send_attempts': sendAttempts,
      if (description != null) 'description': description,
    });
  }

  TableWithDefaultDataCompanion copyWith(
      {Value<int>? id, Value<int>? sendAttempts, Value<String?>? description}) {
    return TableWithDefaultDataCompanion(
      id: id ?? this.id,
      sendAttempts: sendAttempts ?? this.sendAttempts,
      description: description ?? this.description,
    );
  }

  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (id.present) {
      map['id'] = Variable<int>(id.value);
    }
    if (sendAttempts.present) {
      map['send_attempts'] = Variable<int>(sendAttempts.value);
    }
    if (description.present) {
      map['description'] = Variable<String>(description.value);
    }
    return map;
  }

  @override
  String toString() {
    return (StringBuffer('TableWithDefaultDataCompanion(')
          ..write('id: $id, ')
          ..write('sendAttempts: $sendAttempts, ')
          ..write('description: $description')
          ..write(')'))
        .toString();
  }
}

abstract class _$AppDatabase extends GeneratedDatabase {
  _$AppDatabase(QueryExecutor e) : super(e);
  $AppDatabaseManager get managers => $AppDatabaseManager(this);
  late final $TableWithTimestampsTable tableWithTimestamps =
      $TableWithTimestampsTable(this);
  late final $TableWithDefaultTable tableWithDefault =
      $TableWithDefaultTable(this);
  @override
  Iterable<TableInfo<Table, Object?>> get allTables =>
      allSchemaEntities.whereType<TableInfo<Table, Object?>>();
  @override
  List<DatabaseSchemaEntity> get allSchemaEntities =>
      [tableWithTimestamps, tableWithDefault];
}

typedef $$TableWithTimestampsTableCreateCompanionBuilder
    = TableWithTimestampCompanion Function({
  Value<int> id,
  Value<String?> name,
  Value<DateTime?> insertedAt,
  Value<DateTime?> updatedAt,
});
typedef $$TableWithTimestampsTableUpdateCompanionBuilder
    = TableWithTimestampCompanion Function({
  Value<int> id,
  Value<String?> name,
  Value<DateTime?> insertedAt,
  Value<DateTime?> updatedAt,
});

class $$TableWithTimestampsTableFilterComposer
    extends Composer<_$AppDatabase, $TableWithTimestampsTable> {
  $$TableWithTimestampsTableFilterComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  ColumnFilters<int> get id => $composableBuilder(
      column: $table.id, builder: (column) => ColumnFilters(column));

  ColumnFilters<String> get name => $composableBuilder(
      column: $table.name, builder: (column) => ColumnFilters(column));

  ColumnFilters<DateTime> get insertedAt => $composableBuilder(
      column: $table.insertedAt, builder: (column) => ColumnFilters(column));

  ColumnFilters<DateTime> get updatedAt => $composableBuilder(
      column: $table.updatedAt, builder: (column) => ColumnFilters(column));
}

class $$TableWithTimestampsTableOrderingComposer
    extends Composer<_$AppDatabase, $TableWithTimestampsTable> {
  $$TableWithTimestampsTableOrderingComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  ColumnOrderings<int> get id => $composableBuilder(
      column: $table.id, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<String> get name => $composableBuilder(
      column: $table.name, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<DateTime> get insertedAt => $composableBuilder(
      column: $table.insertedAt, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<DateTime> get updatedAt => $composableBuilder(
      column: $table.updatedAt, builder: (column) => ColumnOrderings(column));
}

class $$TableWithTimestampsTableAnnotationComposer
    extends Composer<_$AppDatabase, $TableWithTimestampsTable> {
  $$TableWithTimestampsTableAnnotationComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  GeneratedColumn<int> get id =>
      $composableBuilder(column: $table.id, builder: (column) => column);

  GeneratedColumn<String> get name =>
      $composableBuilder(column: $table.name, builder: (column) => column);

  GeneratedColumn<DateTime> get insertedAt => $composableBuilder(
      column: $table.insertedAt, builder: (column) => column);

  GeneratedColumn<DateTime> get updatedAt =>
      $composableBuilder(column: $table.updatedAt, builder: (column) => column);
}

class $$TableWithTimestampsTableTableManager extends RootTableManager<
    _$AppDatabase,
    $TableWithTimestampsTable,
    TableWithTimestamp,
    $$TableWithTimestampsTableFilterComposer,
    $$TableWithTimestampsTableOrderingComposer,
    $$TableWithTimestampsTableAnnotationComposer,
    $$TableWithTimestampsTableCreateCompanionBuilder,
    $$TableWithTimestampsTableUpdateCompanionBuilder,
    (
      TableWithTimestamp,
      BaseReferences<_$AppDatabase, $TableWithTimestampsTable,
          TableWithTimestamp>
    ),
    TableWithTimestamp,
    PrefetchHooks Function()> {
  $$TableWithTimestampsTableTableManager(
      _$AppDatabase db, $TableWithTimestampsTable table)
      : super(TableManagerState(
          db: db,
          table: table,
          createFilteringComposer: () =>
              $$TableWithTimestampsTableFilterComposer($db: db, $table: table),
          createOrderingComposer: () =>
              $$TableWithTimestampsTableOrderingComposer(
                  $db: db, $table: table),
          createComputedFieldComposer: () =>
              $$TableWithTimestampsTableAnnotationComposer(
                  $db: db, $table: table),
          updateCompanionCallback: ({
            Value<int> id = const Value.absent(),
            Value<String?> name = const Value.absent(),
            Value<DateTime?> insertedAt = const Value.absent(),
            Value<DateTime?> updatedAt = const Value.absent(),
          }) =>
              TableWithTimestampCompanion(
            id: id,
            name: name,
            insertedAt: insertedAt,
            updatedAt: updatedAt,
          ),
          createCompanionCallback: ({
            Value<int> id = const Value.absent(),
            Value<String?> name = const Value.absent(),
            Value<DateTime?> insertedAt = const Value.absent(),
            Value<DateTime?> updatedAt = const Value.absent(),
          }) =>
              TableWithTimestampCompanion.insert(
            id: id,
            name: name,
            insertedAt: insertedAt,
            updatedAt: updatedAt,
          ),
          withReferenceMapper: (p0) => p0
              .map((e) => (e.readTable(table), BaseReferences(db, table, e)))
              .toList(),
          prefetchHooksCallback: null,
        ));
}

typedef $$TableWithTimestampsTableProcessedTableManager = ProcessedTableManager<
    _$AppDatabase,
    $TableWithTimestampsTable,
    TableWithTimestamp,
    $$TableWithTimestampsTableFilterComposer,
    $$TableWithTimestampsTableOrderingComposer,
    $$TableWithTimestampsTableAnnotationComposer,
    $$TableWithTimestampsTableCreateCompanionBuilder,
    $$TableWithTimestampsTableUpdateCompanionBuilder,
    (
      TableWithTimestamp,
      BaseReferences<_$AppDatabase, $TableWithTimestampsTable,
          TableWithTimestamp>
    ),
    TableWithTimestamp,
    PrefetchHooks Function()>;
typedef $$TableWithDefaultTableCreateCompanionBuilder
    = TableWithDefaultDataCompanion Function({
  Value<int> id,
  Value<int> sendAttempts,
  Value<String?> description,
});
typedef $$TableWithDefaultTableUpdateCompanionBuilder
    = TableWithDefaultDataCompanion Function({
  Value<int> id,
  Value<int> sendAttempts,
  Value<String?> description,
});

class $$TableWithDefaultTableFilterComposer
    extends Composer<_$AppDatabase, $TableWithDefaultTable> {
  $$TableWithDefaultTableFilterComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  ColumnFilters<int> get id => $composableBuilder(
      column: $table.id, builder: (column) => ColumnFilters(column));

  ColumnFilters<int> get sendAttempts => $composableBuilder(
      column: $table.sendAttempts, builder: (column) => ColumnFilters(column));

  ColumnFilters<String> get description => $composableBuilder(
      column: $table.description, builder: (column) => ColumnFilters(column));
}

class $$TableWithDefaultTableOrderingComposer
    extends Composer<_$AppDatabase, $TableWithDefaultTable> {
  $$TableWithDefaultTableOrderingComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  ColumnOrderings<int> get id => $composableBuilder(
      column: $table.id, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<int> get sendAttempts => $composableBuilder(
      column: $table.sendAttempts,
      builder: (column) => ColumnOrderings(column));

  ColumnOrderings<String> get description => $composableBuilder(
      column: $table.description, builder: (column) => ColumnOrderings(column));
}

class $$TableWithDefaultTableAnnotationComposer
    extends Composer<_$AppDatabase, $TableWithDefaultTable> {
  $$TableWithDefaultTableAnnotationComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  GeneratedColumn<int> get id =>
      $composableBuilder(column: $table.id, builder: (column) => column);

  GeneratedColumn<int> get sendAttempts => $composableBuilder(
      column: $table.sendAttempts, builder: (column) => column);

  GeneratedColumn<String> get description => $composableBuilder(
      column: $table.description, builder: (column) => column);
}

class $$TableWithDefaultTableTableManager extends RootTableManager<
    _$AppDatabase,
    $TableWithDefaultTable,
    TableWithDefaultData,
    $$TableWithDefaultTableFilterComposer,
    $$TableWithDefaultTableOrderingComposer,
    $$TableWithDefaultTableAnnotationComposer,
    $$TableWithDefaultTableCreateCompanionBuilder,
    $$TableWithDefaultTableUpdateCompanionBuilder,
    (
      TableWithDefaultData,
      BaseReferences<_$AppDatabase, $TableWithDefaultTable,
          TableWithDefaultData>
    ),
    TableWithDefaultData,
    PrefetchHooks Function()> {
  $$TableWithDefaultTableTableManager(
      _$AppDatabase db, $TableWithDefaultTable table)
      : super(TableManagerState(
          db: db,
          table: table,
          createFilteringComposer: () =>
              $$TableWithDefaultTableFilterComposer($db: db, $table: table),
          createOrderingComposer: () =>
              $$TableWithDefaultTableOrderingComposer($db: db, $table: table),
          createComputedFieldComposer: () =>
              $$TableWithDefaultTableAnnotationComposer($db: db, $table: table),
          updateCompanionCallback: ({
            Value<int> id = const Value.absent(),
            Value<int> sendAttempts = const Value.absent(),
            Value<String?> description = const Value.absent(),
          }) =>
              TableWithDefaultDataCompanion(
            id: id,
            sendAttempts: sendAttempts,
            description: description,
          ),
          createCompanionCallback: ({
            Value<int> id = const Value.absent(),
            Value<int> sendAttempts = const Value.absent(),
            Value<String?> description = const Value.absent(),
          }) =>
              TableWithDefaultDataCompanion.insert(
            id: id,
            sendAttempts: sendAttempts,
            description: description,
          ),
          withReferenceMapper: (p0) => p0
              .map((e) => (e.readTable(table), BaseReferences(db, table, e)))
              .toList(),
          prefetchHooksCallback: null,
        ));
}

typedef $$TableWithDefaultTableProcessedTableManager = ProcessedTableManager<
    _$AppDatabase,
    $TableWithDefaultTable,
    TableWithDefaultData,
    $$TableWithDefaultTableFilterComposer,
    $$TableWithDefaultTableOrderingComposer,
    $$TableWithDefaultTableAnnotationComposer,
    $$TableWithDefaultTableCreateCompanionBuilder,
    $$TableWithDefaultTableUpdateCompanionBuilder,
    (
      TableWithDefaultData,
      BaseReferences<_$AppDatabase, $TableWithDefaultTable,
          TableWithDefaultData>
    ),
    TableWithDefaultData,
    PrefetchHooks Function()>;

class $AppDatabaseManager {
  final _$AppDatabase _db;
  $AppDatabaseManager(this._db);
  $$TableWithTimestampsTableTableManager get tableWithTimestamps =>
      $$TableWithTimestampsTableTableManager(_db, _db.tableWithTimestamps);
  $$TableWithDefaultTableTableManager get tableWithDefault =>
      $$TableWithDefaultTableTableManager(_db, _db.tableWithDefault);
}
