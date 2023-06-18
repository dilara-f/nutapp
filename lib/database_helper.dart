import 'package:mysql1/mysql1.dart';

class DatabaseHelper {
  static final _databaseName = 'foodb';
  static final _host = 'localhost';
  static final _port = 3306;
  static final _user = 'root';
  static final _password = 'root';

  static Future<MySqlConnection> _openConnection() async {
    final settings = ConnectionSettings(
      host: _host,
      port: _port,
      user: _user,
      password: _password,
      db: _databaseName,
    );
    final connection = await MySqlConnection.connect(settings);
    return connection;
  }

}
