import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('SharedPreferences App'),
      ),
      drawer: Drawer(
        child: Column(
          children: [
            DrawerHeader(
              decoration: BoxDecoration(
                image: DecorationImage(
                  fit: BoxFit.cover,
                  image: NetworkImage(
                      'https://images.pexels.com/photos/2832382/pexels-photo-2832382.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1'),
                ),
              ),
              child: SizedBox(
                width: double.infinity,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    CircleAvatar(
                      radius: 28,
                      backgroundImage: NetworkImage(
                        'https://images.pexels.com/photos/1848565/pexels-photo-1848565.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1',
                      ),
                    ),
                    Text(
                      'Fiorella Gonzales Tapia',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    Text(
                      'Administrador',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 16,
                      ),
                    ),
                  ],
                ),
              ),
            ),
            ListTile(
              leading: Icon(
                Icons.people,
                color: Colors.black.withOpacity(0.6),
              ),
              title: Text('Mi perfil'),
            ),
            ListTile(
              leading: Icon(
                Icons.file_copy,
                color: Colors.black.withOpacity(0.6),
              ),
              title: Text('Portafolio General'),
            ),
            ListTile(
              leading: Icon(
                Icons.lock,
                color: Colors.black.withOpacity(0.6),
              ),
              title: Text('Cambiar Contraseña'),
            ),
            Divider(
              indent: 20,
              endIndent: 20,
            ),
            ListTile(
              leading: Icon(
                Icons.exit_to_app,
                color: Colors.black.withOpacity(0.6),
              ),
              title: Text('Salir'),
            ),
          ],
        ),
      ),
    );
  }
}
