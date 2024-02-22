import 'package:shared_preferences/shared_preferences.dart';

class AuthStore {
  static const String keySessionId = 'sessionId';

  SharedPreferences? _sharedPreferences;

  Future<SharedPreferences> _getSharedPreferences() async {
    _sharedPreferences ??= await SharedPreferences.getInstance();
    return _sharedPreferences!;
  }

  Future<String?> getSessionId() async {
    final sharedPreferences = await _getSharedPreferences();
    return sharedPreferences.getString(keySessionId);
  }

  Future<void> setSessionId(String value) async {
    final sharedPreferences = await _getSharedPreferences();
    await sharedPreferences.setString(keySessionId, value);
  }
}
