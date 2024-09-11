import 'package:shared_preferences/shared_preferences.dart';

class SharedGlobal {
  static final SharedGlobal myInstance = SharedGlobal._instance();
  SharedGlobal._instance();

  factory SharedGlobal() {
    return myInstance;
  }

  late SharedPreferences _prefs;

  Future<void> initSharedPreferences() async {
    _prefs = await SharedPreferences.getInstance();
  }

  //FULL NAME:
  set fullName(String value) {
    _prefs.setString('fullName', value);
  }

  String get fullName {
    return _prefs.getString('fullName') ?? '-';
  }

  //ADDRESS:
  set address(String value) {
    _prefs.setString('address', value);
  }

  String get address {
    return _prefs.getString('address') ?? '-';
  }

  //MODO OSCURO:
  set isDarkMode(bool value) {
    _prefs.setBool('isDarkMode', value);
  }

  bool get isDarkMode {
    return _prefs.getBool('isDarkMode') ?? false;
  }

  //MODO GENDER:
  set gender(int value) {
    _prefs.setInt('gender', value);
  }

  int get gender {
    return _prefs.getInt('gender') ?? 1;
  }

  //MODO DIFICULT:
  set dificult(int value) {
    _prefs.setInt('dificult', value);
  }

  int get dificult {
    return _prefs.getInt('dificult') ?? 3;
  }
}
