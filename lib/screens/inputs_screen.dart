import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

import '../widgets/widgets.dart';

class InputsScreen extends StatelessWidget {
  const InputsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final GlobalKey<FormState> myFormKey = GlobalKey<FormState>();

    final Map<String, String> formValues = {
      'first_name': 'Marc',
      'last_name': 'Fontova',
      'email': 'mfontova@gmail.com',
      'phone': '666555444',
      'password': 'marc1994',
      'role': 'Admin'
    };

    return Scaffold(
      appBar: AppBar(
        title: const Text('Inputs & Forms'),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
          child: Form(
            key: myFormKey,
            child: Column(
              children: [
                const CustomInputField(
                  keyboardType: TextInputType.name,
                  labelText: 'Nombre',
                  hintText: 'Nombre del usuario',
                  icon: Icons.perm_contact_cal,
                ),
                const SizedBox(height: 30),
                const CustomInputField(
                  keyboardType: TextInputType.name,
                  labelText: 'Apellido',
                  hintText: 'Apellido del usuario',
                ),
                const SizedBox(height: 30),
                const CustomInputField(
                  keyboardType: TextInputType.emailAddress,
                  labelText: 'Correo electrónico',
                  hintText: 'example@example.com',
                ),
                const SizedBox(height: 30),
                const CustomInputField(
                  keyboardType: TextInputType.phone,
                  labelText: 'Teléfono',
                  hintText: '666555444',
                ),
                const SizedBox(height: 30),
                const CustomInputField(
                  labelText: 'Contraseña',
                  hintText: '******',
                  obscureText: true,
                ),
                const SizedBox(
                  height: 30,
                ),
                ElevatedButton(
                    onPressed: () {
                      FocusScope.of(context).requestFocus(FocusNode());
                      if (!myFormKey.currentState!.validate()) {
                        print('Formulario no valido');
                        return;
                      }
                      print(formValues);
                    },
                    child: const SizedBox(
                      width: double.infinity,
                      child: Center(
                        child: Text('Guardar'),
                      ),
                    ))
              ],
            ),
          ),
        ),
      ),
    );
  }
}
