// database/db_helper.dart
import 'package:path/path.dart';
import 'package:sqflite/sqflite.dart';

class DBHelper {
  static final DBHelper dbHero = DBHelper._secretDBConstructor();
  static Database? _database;

  DBHelper._secretDBConstructor();

  Future<Database> get dataBase async {
    if (_database != null) return _database!;
    _database = await _initDatabase();
    return _database!;
  }

  Future<Database> _initDatabase() async {
    final path = join(await getDatabasesPath(), 'my_database.db');
    return await openDatabase(
      path,
      version: 2,
      onCreate: _createDatabase,
      onUpgrade: (db, oldVersion, newVersion) async {
        await _deleteAndRecreateTable(db); // Optional: Handle upgrades if needed
      },
    );
  }

  void _createDatabase(Database db, int version) async {

    await db.execute('''
      CREATE TABLE my_table (
        id INTEGER PRIMARY KEY AUTOINCREMENT,
        name TEXT,
        description TEXT,
        day TEXT  
      )
    ''');
  }

  // Method to delete and recreate the table
  Future<void> _deleteAndRecreateTable(Database db) async {
    await db.execute('DROP TABLE IF EXISTS my_table'); // Drop the existing table
    _createDatabase(db, 2); // Recreate the table
  }

  Future<void> resetDatabase() async {
    final db = await dataBase;
    await _deleteAndRecreateTable(db); // Call to drop and recreate the table
  }

  Future<int> insertDb(Map<String, dynamic> row) async {
    Database db = await dbHero.dataBase;
    return await db.insert('my_table', row);
  }

  Future<List<Map<String, dynamic>>> readDb() async {
    Database db = await dbHero.dataBase;
    return await db.query('my_table');
  }

  Future<int> updateDb(Map<String, dynamic> row) async {
    Database db = await dbHero.dataBase;
    int id = row['id'];
    return await db.update('my_table', row, where: 'id = ?', whereArgs: [id]);
  }

  Future<int> deleteDb(int id) async {
    Database db = await dbHero.dataBase;
    return await db.delete('my_table', where: 'id = ?', whereArgs: [id]);
  }

}
