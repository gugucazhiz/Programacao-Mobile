import 'package:flutter_app/models/Rotina.dart';
import 'package:path/path.dart';
import 'package:sqflite/sqflite.dart';


class Databasehelper {
  Database? _db;
  Future<Database> get db async{
    _db ??= await initDb();
    // if(_db == null){
    //   _db = await initDb();   aparentemente o mesmo codigo;
    // }
    return _db!;
  }


  Future<Database> initDb() async {
    String? databasesPath = await getDatabasesPath();
    if (databasesPath == null) databasesPath = "";
    String path = join(databasesPath, "livros.db");
      return await openDatabase(path, version: 1,
        onCreate: (Database db, int newerVersion) async {
        await db.execute(
        "CREATE TABLE ${RotinaContract.rotinaTable}(${RotinaContract.idColumn} INTEGER PRIMARY KEY AUTOINCREMENT, "
            " ${RotinaContract.nomeColumn} TEXT, "
            " ${RotinaContract.prioridadeColumn} INTEGER) ");
    });
  }

  Future<Rotina> saveRotina(Rotina l) async{
    Database? dbRotina = await db;

    if(dbRotina != null){
      l.id = await dbRotina.insert(
        RotinaContract.rotinaTable, 
        l.toMap(),
        );
    }
    return l;
  }

  Future<int> updateLivro(Rotina l) async {
    Database? dbLivro = await db;
    if (dbLivro != null) {
      return await dbLivro.update(RotinaContract.rotinaTable, l.toMap(),
             where: "${RotinaContract.idColumn} = ?", whereArgs: [l.id]);
    }else{
      return 0;
    } 
  }

  Future<int> deleteLivro(Rotina l) async{
    Database? dbLivro = await db;

    if(dbLivro != null){
      return await dbLivro.delete(RotinaContract.rotinaTable,
      where: "${RotinaContract.idColumn} = ?",whereArgs: [l.id]);
    }else{
      return 0;
    }
  }
}
