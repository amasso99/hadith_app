import 'dart:io';

import 'package:flutter/services.dart';
import 'package:myapp/models/hadith.dart';
import 'package:path_provider/path_provider.dart';
import 'package:sqflite/sqflite.dart';
import 'package:path/path.dart';

class DatabaseManager {
  DatabaseManager.privateConstructor();

  static final DatabaseManager instance = DatabaseManager.privateConstructor();

  static Database? _database;

  Future<Database> get database async {
    if (_database != null) return _database!;
    _database = await _initDatabase();
    return _database!;
  }

  Future<Database> _initDatabase() async {
    // Directory documentsDirectory = await getApplicationDocumentsDirectory();

    // String path = join(documentsDirectory.path, 'assets/sahih_bukahri.sqlite');
    // return await openDatabase(
    //   path,
    //   version: 1,
    // );

    var databasesPath = await getApplicationDocumentsDirectory();
    var path = join(databasesPath.path, "sahih_bukhari.sqlite");
    print("start db program");
    // Check if the database exists
    print(path);
    var exists = await databaseExists(path);
    print("db exists");
    print(exists);
    if (!exists) {
      // Should happen only the first time you launch your application
      print("Creating new copy from asset");

      // Make sure the parent directory exists
      await Directory(dirname(path)).create(recursive: true);

      // Copy from asset
      ByteData data =
          await rootBundle.load(join("assets", "sahih_bukhari.sqlite"));
      List<int> bytes =
          data.buffer.asUint8List(data.offsetInBytes, data.lengthInBytes);

      // Write and flush the bytes written
      await File(path).writeAsBytes(bytes, flush: true);
    } else {
      print("Opening existing database");
    }

    return await openDatabase(path, readOnly: true);
  }

  Future<List<Hadith>> getHadiths() async {
    print("hello");
    Database db = await instance.database;
    var hadiths = await db.query('sahih_bukhari', orderBy: 'id', limit: 30);

    List<Hadith> hadithList = hadiths.isNotEmpty
        ? hadiths.map((e) => Hadith.fromJson(e)).toList()
        : [];
    return hadithList;
  }
}
