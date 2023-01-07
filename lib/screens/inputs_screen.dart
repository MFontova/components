import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

import '../widgets/widgets.dart';

class InputsScreen extends StatelessWidget {
  const InputsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Inputs & Forms'),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
          child: Column(
            children: const [
              CustomInputField(
                keyboardType: TextInputType.name,
                labelText: 'Nombre',
                hintText: 'Nombre del usuario',
                icon: Icons.perm_contact_cal,
              ),
              SizedBox(height: 30),
              CustomInputField(
                keyboardType: TextInputType.name,
                labelText: 'Apellido',
                hintText: 'Apellido del usuario',
              ),
              SizedBox(height: 30),
              CustomInputField(
                keyboardType: TextInputType.emailAddress,
                labelText: 'Correo electrónico',
                hintText: 'example@example.com',
              ),
              SizedBox(height: 30),
              CustomInputField(
                keyboardType: TextInputType.phone,
                labelText: 'Teléfono',
                hintText: '666555444',
              ),
              SizedBox(height: 30),
              CustomInputField(
                labelText: 'Contraseña',
                hintText: '******',
                obscureText: true,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
