import 'dart:convert';
import 'dart:io';
import 'package:flutter/foundation.dart';
import 'package:path_provider/path_provider.dart';
import 'package:sqflite/sqflite.dart';
import 'package:shared_preferences/shared_preferences.dart';

import '../../features/user/domain/entity/user_entity.dart';
import '../../utils/variable.dart';

class UserDB {
  UserDB._();

  static Future<Database> iniciar() async {
    final Directory documentsDirectory = await getApplicationDocumentsDirectory();
    final String path = documentsDirectory.path + '/usuario_venver.db';
    final database = await openDatabase(path,
      version: 1, onUpgrade: (Database db, int version, int info) async {},
      onCreate: (Database db, int version) async {
      await db.execute('CREATE TABLE usuarioVenver (' +
        'id integer primary key autoincrement, ' +
        'usuario TEXT)',
      );
    });
    return database;
  }

  static Future inserir(dados) async {
    if (kIsWeb || Platform.isWindows) {
      await SharedPreferences.getInstance().then((prefs) async {
        prefs.setString('usuarioVenver', dados);
      });
    } else {
      final database = await iniciar();
      await database.rawInsert('INSERT into usuarioVenver(usuario)' + ' values(?)', [dados]);
      await fechar(database);
    }
  }

  static Future atualizar(UserEntity usuarioTemp) async {
    if (kIsWeb || Platform.isWindows) {
      await SharedPreferences.getInstance().then((prefs) async {
        prefs.setString('usuarioVenver', jsonEncode(usuarioTemp.toMap()));
      });
      userSM.user = usuarioTemp;
    } else {
      final database = await iniciar();
      await database.rawUpdate(
        'UPDATE usuarioVenver SET usuario = ?',
        [jsonEncode(usuarioTemp.toMap())],
      );
      userSM.user = usuarioTemp;
    }
  }

  static Future<UserEntity?> ler() async {
    if (kIsWeb || Platform.isWindows) {
      UserEntity? usuarioTemp;
      await SharedPreferences.getInstance().then((prefs) async {
        if (prefs.containsKey('usuarioVenver')) {
          final String retorno = prefs.getString('usuarioVenver') ?? '{}';
          try {
            usuarioTemp = UserEntity.fromMap(jsonDecode(retorno));
          } catch (e) {
            // e
          }
        }
      });
      userSM.user = usuarioTemp;
      return usuarioTemp;
    } else {
      final database = await iniciar();
      final List lista = await database.query(
        'usuarioVenver',
        columns: ['*'],
        where: 'id>?',
        whereArgs: ['0'],
      );
      UserEntity? usuarioTemp;
      if (lista.isNotEmpty) {
        final Map<String, dynamic> usuarioTempMap =
            jsonDecode(lista[0]['usuario']);
        usuarioTemp = UserEntity.fromMap(usuarioTempMap);
      }
      userSM.user = usuarioTemp;
      return usuarioTemp;
    }
  }

  static Future remover() async {
    if (kIsWeb || Platform.isWindows) {
      await SharedPreferences.getInstance().then((prefs) async {
        prefs.remove('usuarioVenver');
      });
    } else {
      final database = await iniciar();
      await database.rawDelete('DELETE FROM usuarioVenver');
      await fechar(database);
    }
  }

  static Future fechar(database) async {
    await database.close();
  }
}
