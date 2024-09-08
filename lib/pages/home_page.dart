import 'package:flutter/material.dart';
import 'package:flutter_codigo_sp/widgets/my_drawer_widget.dart';
import 'package:shared_preferences/shared_preferences.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  bool isDarkMode = false;
  int gender = 1;
  int dificult = 3;

  TextEditingController _fullNameController = TextEditingController();

  TextEditingController _addressController = TextEditingController();

  saveSharedPreferences() async {
    SharedPreferences _prefs = await SharedPreferences.getInstance();
    _prefs.setString('fullName', _fullNameController.text);
    _prefs.setString('address', _addressController.text);
    _prefs.setBool('darkMode', isDarkMode);
    _prefs.setInt('gender', gender);
    _prefs.setInt('dificult', dificult);
    print('guardado en Shared Preferens');
  }

  getDataSharedPreferences() async {
    SharedPreferences _prefs = await SharedPreferences.getInstance();
    String fullName = _prefs.getString('fullName') ?? '';
    String address = _prefs.getString('address') ?? '';
    print(fullName);
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
                  onPressed: () {
                    saveSharedPreferences();
                    //getDataSharedPreferences();
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
