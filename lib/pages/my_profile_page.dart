import 'package:flutter/material.dart';
import 'package:flutter_codigo_sp/utils/shared_global.dart';

class MyProfilePage extends StatefulWidget {
  const MyProfilePage({super.key});

  @override
  State<MyProfilePage> createState() => _MyProfilePageState();
}

class _MyProfilePageState extends State<MyProfilePage> {
  final SharedGlobal _sharedGlobal = SharedGlobal();

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
              title: Text(_sharedGlobal.fullName),
              subtitle: Text('Nombre completo'),
            ),
            ListTile(
              leading: Icon(Icons.location_on),
              title: Text(_sharedGlobal.address),
              subtitle: Text('Direccion'),
            ),
            ListTile(
              leading: Icon(Icons.dark_mode),
              title:
                  Text(_sharedGlobal.isDarkMode ? 'Activado' : 'Desactivado'),
              subtitle: Text('Modo Oscuro'),
            ),
            ListTile(
              leading: Icon(Icons.account_tree),
              title: Text(_sharedGlobal.gender == 1 ? 'Masculino' : 'Femenino'),
              subtitle: Text('Genero'),
            ),
            ListTile(
              leading: Icon(Icons.ac_unit),
              title: Text(_sharedGlobal.dificult == 3 ? 'Facil' : 'Dificil'),
              subtitle: Text('Nivel de dificultad'),
            )
          ],
        ),
      ),
    );
  }
}
