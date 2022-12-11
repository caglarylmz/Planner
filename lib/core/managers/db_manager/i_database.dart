import 'package:sqflite/sqflite.dart';

abstract class IDatabase<T> {
  Future<Database> init();

  Future onCreate(Database db, int version);

  Future<int> add(T t);

  Future<int> delete(T t);

  Future<int> update(T t);

  Future<List<T>> getAll();

  Future<T> getById(T t);

  Future<List<Map<String, dynamic>>> query(String tableName);

  Future<List<Map<String, dynamic>>> rawQuery(String afterTableNameQuery);
}
