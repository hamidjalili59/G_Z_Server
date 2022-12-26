import 'package:dartz/dartz.dart';
import 'package:database_service/src/database_errors.dart';
import 'package:database_service/src/no_param.dart';
import 'package:hive/hive.dart';

abstract class DatabaseService {
  const DatabaseService();

  Future initialize();

  Future<Either<DatabaseError, NoParam>> closeDatabase();

  Future<Box> openBox(String boxName);

  Future<Either<DatabaseError, NoParam>> closeBox(
    String boxName,
  );

  Future<Either<DatabaseError, NoParam>> write(
    String boxName,
    String key,
    dynamic value,
  );

  Future<Either<DatabaseError, NoParam>> writeMultiple(
    String boxName,
    Map<dynamic, dynamic> enteries,
  );

  Future<Either<DatabaseError, dynamic>> read(
    String boxName,
    String key, {
    dynamic defaultValue,
  });

  Future<Either<DatabaseError, dynamic>> readAll(
    String boxName,
    String data, {
    dynamic defaultValue,
  });

  Future<Either<DatabaseError, dynamic>> findData(
    String boxName,
    dynamic data, {
    dynamic defaultValue,
  });

  Future<Either<DatabaseError, NoParam>> update(
    String boxName,
    String key,
    dynamic value,
  );

  Future<Either<DatabaseError, NoParam>> addOrUpdate(
    String boxName,
    String key,
    dynamic value,
  );

  Future<Either<DatabaseError, NoParam>> delete(
    String boxName,
    String key,
  );

  Future<Either<DatabaseError, NoParam>> deleteMultiple(
    String boxName,
    Iterable<dynamic> keys,
  );

  Future<Either<DatabaseError, int>> clearBox(
    String boxName,
  );

  Future<Either<DatabaseError, NoParam>> deleteBoxFromDisk(
    String boxName,
  );

  Future<Either<DatabaseError, NoParam>> deleteDatabaseFromDisk();

  Future<Either<DatabaseError, bool>> hasProperty(
    String boxName,
    String key,
  );

  Future<Either<DatabaseError, NoParam>> registerAdapter<T>(
    TypeAdapter<T> adapter, {
    bool override = false,
  });
}
