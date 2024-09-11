import 'package:flutter/material.dart';
import 'package:flutter_codigo_sp/utils/shared_global.dart';
import 'package:flutter_codigo_sp/widgets/my_drawer_widget.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final SharedGlobal _sharedGlobal = SharedGlobal();

  bool isDarkMode = false;
  int gender = 1;
  int dificult = 3;
  TextEditingController _fullNameController = TextEditingController();
  TextEditingController _addressController = TextEditingController();

  saveGlobalPreferences() {
    _sharedGlobal.fullName = _fullNameController.text;
    _sharedGlobal.address = _addressController.text;
    _sharedGlobal.isDarkMode = isDarkMode;
    _sharedGlobal.gender = gender;
    _sharedGlobal.dificult = dificult;
  }

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
      body: SingleChildScrollView(
        child: Padding(
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
                controller: _fullNameController,
                decoration: InputDecoration(
                  hintText: 'Nombre completo',
                ),
              ),
              SizedBox(height: 20),
              TextField(
                controller: _addressController,
                decoration: InputDecoration(
                  hintText: 'Direccion actual',
                ),
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
                  setState(() {});
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
                  });
                },
              ),
              SizedBox(height: 40),

              SizedBox(
                width: double.infinity,
                height: 50,
                child: ElevatedButton.icon(
                  onPressed: () {
                    saveGlobalPreferences();
                    ScaffoldMessenger.of(context).showSnackBar(
                      SnackBar(
                        content: Row(
                          children: [
                            Icon(Icons.check, color: Colors.white),
                            SizedBox(width: 10),
                            Text(
                              'Datos guardados correctamente',
                              style: TextStyle(color: Colors.white),
                            ),
                          ],
                        ),
                        backgroundColor: Colors.green,
                        duration: Duration(seconds: 3),
                        behavior: SnackBarBehavior.floating,
                        margin: EdgeInsets.only(
                            bottom: 20.0, left: 10.0, right: 10.0),
                        action: SnackBarAction(
                          label: 'DESHACER',
                          textColor: Colors.white,
                          onPressed: () {
                            // Acción a realizar cuando se presiona el botón
                          },
                        ),
                      ),
                    );
                  },
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
      ),
    );
  }
}
