import 'package:shared_preferences/shared_preferences.dart';

class SharedPreferencesService {
  SharedPreferencesService._();
  static final SharedPreferencesService instance = SharedPreferencesService._();

  late final SharedPreferences _preferences;

  Future<void> init() async {
    _preferences = await SharedPreferences.getInstance();
  }

  Future<void> dispose() async {
    await _preferences.clear();
  }

  Object? getFromDisk(String key) {
    final value = _preferences.get(key);
    return value;
  }

  Future<void> saveToDisk(String key, dynamic content) async {
    if (content is String) {
      _preferences.setString(key, content);
    }
    if (content is bool) {
      _preferences.setBool(key, content);
    }
    if (content is int) {
      _preferences.setInt(key, content);
    }
    if (content is double) {
      _preferences.setDouble(key, content);
    }
    if (content is List<String>) {
      _preferences.setStringList(key, content);
    }
  }
}
