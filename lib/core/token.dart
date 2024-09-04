import 'package:flutter_secure_storage/flutter_secure_storage.dart';

class Token {
  static save(String token) async {
    const storage = FlutterSecureStorage();
    await storage.write(key: 'token', value: token);
  }

  static Future<String?> get() async {
    const storage = FlutterSecureStorage();
    return await storage.read(key: 'token');
  }

  static delete() async {
    const storage = FlutterSecureStorage();
    await storage.delete(key: 'token');
  }
}
