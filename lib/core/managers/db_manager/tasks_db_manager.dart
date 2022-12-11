import 'package:planner/core/managers/db_manager/i_database.dart';
import 'package:planner/app/data/task/models/task.dart';
import 'package:sqflite/sqflite.dart';

class TaskDbManager implements IDatabase<Task> {
  TaskDbManager._();

  static final TaskDbManager _instance = TaskDbManager._();

  static TaskDbManager get instance => _instance;
  static Database? _database;

  Future<Database> get database async {
    if (_database != null) {
      return _database!;
    } else {
      _database = await init();
      return _database!;
    }
  }

  final int _version = 1;
  final String _tableName = "tasks";

  final String colId = 'id';
  final String colTitle = 'title';
  final String colNote = "note";
  final String colDate = "date";
  final String colStartTime = 'startTime';
  final String colEndTime = 'endTime';
  final String colRemind = 'remind';
  final String colRepeat = 'repeat';
  final String colColor = 'color';
  final String colIsCompleted = 'isCompleted';

  @override
  Future<Database> init() async {
    String path = "${await getDatabasesPath()}planner.db";
    return await openDatabase(path, version: _version, onCreate: onCreate);
  }

  @override
  Future onCreate(Database db, int version) async {
    await db.execute("""
      CREATE TABLE $_tableName(
      $colId INTEGER PRIMARY KEY AUTOINCREMENT,
      $colTitle STRING,
      $colNote TEXT,
      $colDate STRING,
      $colStartTime STRING,
      $colEndTime STRING,
      $colRemind INTEGER,
      $colRepeat STRING,
      $colColor INTEGER,
      $colIsCompleted BOOLEAN)
      """);
  }

  @override
  Future<int> add(Task t) async {
    final db = await instance.database;
    return await db.insert(_tableName, t.toJson());
  }

  @override
  Future<int> update(Task t) async {
    final db = await instance.database;
    return await db
        .update(_tableName, t.toJson(), where: "id=?", whereArgs: [t.id]);
  }

  @override
  Future<int> delete(Task t) async {
    final db = await instance.database;
    return await db.delete(_tableName, where: "id=?", whereArgs: [t.id]);
  }

  @override
  Future<List<Task>> getAll() async {
    final data = await query(_tableName);
    return data.map((t) => Task.fromJson(t)).toList();
  }

  @override
  Future<Task> getById(Task t) async {
    final db = await instance.database;
    final data = await db.query(_tableName, where: "id=?", whereArgs: [t.id]);
    return Task.fromJson(data.first);
  }

  @override
  Future<List<Map<String, dynamic>>> query(String tableName) async {
    final db = await instance.database;
    return await db.query(tableName);
  }

  @override
  Future<List<Map<String, dynamic>>> rawQuery(
      String afterTableNameQuery) async {
    final db = await instance.database;
    return await db.rawQuery("SELECT * FROM $_tableName $afterTableNameQuery");
  }
}
