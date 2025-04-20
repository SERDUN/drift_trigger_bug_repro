# 🐞 Drift Trigger Bug Reproduction

This repository demonstrates a bug in [Drift](https://drift.simonbinder.eu/) where using `.withDefault(Constant(0))` on an `IntColumn` causes a crash during schema dump generation.

---

## ❗️ The Problem

Using the following column definition:

```dart
IntColumn get sendAttempts => integer().withDefault(const Constant(0))(); // ❌ causes schema dump error
```

Results in the following exception when running `drift_dev schema dump`:

```
Unhandled exception:
Null check operator used on a null value
#0      DatabaseWriter.createTrigger (package:drift_dev/src/writer/database_writer.dart:241:77)
...
```

Replacing it with:

```dart
IntColumn get sendAttempts => integer()(); // ✅ works fine
```

Resolves the issue.

---

## 🧪 Reproduction Steps

1. Clone the repo:
   ```bash
   git clone https://github.com/your-username/drift-trigger-repro.git
   cd drift-trigger-repro
   ```

2. Get dependencies:
   ```bash
   dart pub get
   ```

3. Run build_runner:
   ```bash
   dart run build_runner build
   ```

4. Run the test script:
   ```bash
   dart run bin/create_schema_dump.dart
   ```

