import 'dart:io';

import 'package:drift/native.dart';
import 'package:drift_trigger_bug_repro/database.dart';
import 'package:io/ansi.dart';

Future<void> main() async {
  final dbFile = File('${Directory.systemTemp.path}/drift_test_bug.sqlite');
  final db = AppDatabase(NativeDatabase(dbFile));
  await db.customSelect('SELECT 1').get();
  await db.close();

  final result = await Process.run(
    'dart',
    [
      'run',
      'drift_dev',
      'schema',
      'dump',
      dbFile.path,
      'lib/schema_dump.json',
    ],
  );

  stdout.write(wrapWith('Schema dump result:\n', [styleBold]));
  stdout.write(result.stdout);
  stderr.write(result.stderr);

  exit(result.exitCode);
}
