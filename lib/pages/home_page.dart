import 'package:flutter/material.dart';
import 'package:flutter_codigo_sp/widgets/my_drawer_widget.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  bool isDarkMode = false;
  int gender = 1;
  int dificult = 3;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'SharedPreferences App',
          style: TextStyle(fontWeight: FontWeight.w600),
        ),
      ),
      drawer: MyDrawerWidget(),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Configuracion General',
              style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.w600,
              ),
            ),
            SizedBox(height: 20),
            TextField(
              decoration: InputDecoration(
                hintText: 'Nombre completo',
              ),
            ),
            SizedBox(height: 20),
            TextField(
              decoration: InputDecoration(hintText: 'Direccion actual'),
            ),
            // Switch(
            //   value: false,
            //   onChanged: (bool value) {},
            // ),
            SizedBox(height: 40),
            SwitchListTile(
              title: Text('Modo Oscuro'),
              value: isDarkMode,
              onChanged: (bool value) {
                isDarkMode = value;
                setState(() {
                  print(isDarkMode);
                });
              },
            ),
            SizedBox(height: 40),

            RadioListTile(
              title: Text('Masculino'),
              value: 1,
              groupValue: gender,
              onChanged: (int? value) {
                setState(() {
                  gender = value!;
                  print(value);
                });
              },
            ),
            RadioListTile(
              title: Text('Femenino'),
              value: 2,
              groupValue: gender,
              onChanged: (int? value) {
                setState(() {
                  gender = value!;
                  print(value);
                });
              },
            ),
            SizedBox(height: 40),

            RadioListTile(
              title: Text('Facil'),
              value: 3,
              groupValue: dificult,
              onChanged: (int? value) {
                setState(() {
                  dificult = value!;
                  print(value);
                });
              },
            ),
            RadioListTile(
              title: Text('Dificil'),
              value: 4,
              groupValue: dificult,
              onChanged: (int? value) {
                setState(() {
                  dificult = value!;
                  print(value);
                });
              },
            ),
            SizedBox(height: 40),

            SizedBox(
              width: double.infinity,
              height: 50,
              child: ElevatedButton.icon(
                onPressed: () {},
                icon: Icon(Icons.save),
                label: Text('Save data'),
                style: ElevatedButton.styleFrom(
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
