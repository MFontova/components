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
                CustomInputField(
                  keyboardType: TextInputType.name,
                  labelText: 'Nombre',
                  hintText: 'Nombre del usuario',
                  icon: Icons.perm_contact_cal,
                  formProperty: 'first_name',
                  formValues: formValues,
                ),
                const SizedBox(height: 30),
                CustomInputField(
                  keyboardType: TextInputType.name,
                  labelText: 'Apellido',
                  hintText: 'Apellido del usuario',
                  formProperty: 'second_name',
                  formValues: formValues,
                ),
                const SizedBox(height: 30),
                CustomInputField(
                  keyboardType: TextInputType.emailAddress,
                  labelText: 'Correo electrónico',
                  hintText: 'example@example.com',
                  formProperty: 'email',
                  formValues: formValues,
                ),
                const SizedBox(height: 30),
                CustomInputField(
                  keyboardType: TextInputType.phone,
                  labelText: 'Teléfono',
                  hintText: '666555444',
                  formProperty: 'phone',
                  formValues: formValues,
                ),
                const SizedBox(height: 30),
                CustomInputField(
                  labelText: 'Contraseña',
                  hintText: '******',
                  obscureText: true,
                  formProperty: 'password',
                  formValues: formValues,
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
