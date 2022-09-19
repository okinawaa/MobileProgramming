import 'package:get/get.dart';
import 'package:shared_preferences/shared_preferences.dart';

class LocalController extends GetxController {
  static LocalController get to => Get.find();

  SharedPreferences? _sharedPreferences;
  final String _idKey = 'id';

  @override
  void onInit() async {
    // TODO: implement onInit
    super.onInit();
    await _setSharedPreferences();
  }

  Future<void> _setSharedPreferences() async {
    _sharedPreferences = await SharedPreferences.getInstance();
    update();
  }

  Future<void> toggleSharedPreferences() async {
    if (_sharedPreferences == null) {
      await _setSharedPreferences();
    }
    await _sharedPreferences!.clear();
  }

  Future<void> setId(String id) async {
    await _sharedPreferences!.setString(_idKey, id);
  }

  Future<String?> getId() async {
    if (_sharedPreferences == null) {
      await _setSharedPreferences();
    }
    return _sharedPreferences!.getString(_idKey);
  }
}
