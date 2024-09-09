import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

class MyProfilePage extends StatefulWidget {
  const MyProfilePage({super.key});

  @override
  State<MyProfilePage> createState() => _MyProfilePageState();
}

class _MyProfilePageState extends State<MyProfilePage> {
  String fullName = '';
  String address = '';
  bool isDarkMode = false;
  int gender = 1;
  int dificult = 3;
  @override
  void initState() {
    super.initState();
    getDataShared();
  }

  getDataShared() async {
    SharedPreferences _prefs = await SharedPreferences.getInstance();
    fullName = _prefs.getString('fullName') ?? '';
    address = _prefs.getString('address') ?? '';
    isDarkMode = _prefs.getBool('darkMode') ?? false;
    gender = _prefs.getInt('gender') ?? 1;
    dificult = _prefs.getInt('dificult') ?? 3;
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('My Profile'),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(
          horizontal: 20,
          vertical: 20,
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Mi informacion',
              style: TextStyle(
                fontSize: 30,
                fontWeight: FontWeight.w600,
              ),
            ),
            ListTile(
              leading: Icon(Icons.person),
              title: Text(fullName),
              subtitle: Text('Nombre completo'),
            ),
            ListTile(
              leading: Icon(Icons.location_on),
              title: Text(address),
              subtitle: Text('Direccion'),
            ),
            ListTile(
              leading: Icon(Icons.dark_mode),
              title: Text(isDarkMode ? 'Activado' : 'Desactivado'),
              subtitle: Text('Modo Oscuro'),
            ),
            ListTile(
              leading: Icon(Icons.account_tree),
              title: Text(gender == 1 ? 'Masculino' : 'Femenino'),
              subtitle: Text('Genero'),
            ),
            ListTile(
              leading: Icon(Icons.ac_unit),
              title: Text(dificult == 3 ? 'Facil' : 'Dificil'),
              subtitle: Text('Nivel de dificultad'),
            )
          ],
        ),
      ),
    );
  }
}
