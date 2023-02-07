import 'package:flutter/material.dart';
import 'package:path_provider/path_provider.dart';
// ignore: depend_on_referenced_packages
import 'package:path/path.dart' as p show join;
import 'package:sqflite/sqflite.dart';

@immutable
class DataLocalApi {
  static const DataLocalApi _db = DataLocalApi._internal();
  const DataLocalApi._internal();

  static DataLocalApi get instance => _db;
  static Database? _database;

  Future<Database> get database async {
    if (_database != null) return _database!;
    _database = await _init();
    return _database!;
  }

  factory DataLocalApi() {
    return _db;
  }

  Future<Database> _init() async {
    final databaseDirectory = await getApplicationDocumentsDirectory();
    final String path = p.join(databaseDirectory.path, 'rochep.db');

    try {
      Database db = await openDatabase(path, version: 1,
          onCreate: (Database db, int version) async {
        await db.execute(
            'CREATE TABLE cat_settings (id TEXT PRIMARY KEY,  value TEXT)');

        await db.insert('cat_settings', {'id': 'firsTime', 'value': '1'});
        await db.insert('cat_settings', {'id': 'sessionActive', 'value': '0'});
        await db
            .insert('cat_settings', {'id': 'isDarkThemeEnabled', 'value': '0'});
        await db
            .insert('cat_settings', {'id': 'selectedLanguage', 'value': 'en'});
      });

      return db;
    } catch (e) {
      throw Exception('Error in SqfLiteController');
    }
  }

  Future<List<Map<String, dynamic>>> getSettings() async {
    final db = await database;

    return db.query('cat_settings');
  }

  Future<void> setFistOpenedAtFalse() async {
    final db = await database;

    db.update('cat_settings', {'value': '0'},
        where: 'id = ?', whereArgs: ['firsTime']);
  }
}
