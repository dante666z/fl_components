import 'package:flutter/material.dart';
import 'package:fl_components/widgets/widgets.dart';

class InputScreen extends StatelessWidget {
  const InputScreen({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    final GlobalKey<FormState> myFormKey = GlobalKey<FormState>();

    final Map<String, String> formValues = {
      'first_name': 'Edgar',
      'last_name': 'Zarate',
      'email': 'mdantez777@gmail.com',
      'password': '123456',
      'role': 'Admin',
    };

    return Scaffold(
      appBar: AppBar(
        title: const Text('Inputs y Forms'),
      ),
      body: SingleChildScrollView(
        child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
            child: Form(
              key: myFormKey,
              child: Column(
                children: [
                  CustomInputField(
                    labelText: 'Nombre',
                    hintText: 'Nombre de usuario',
                    formProperty: 'first_name',
                    formValues: formValues,
                  ),
                  const SizedBox(
                    height: 30,
                  ),
                  CustomInputField(
                    labelText: 'Apellido',
                    hintText: 'Apellido del usuario',
                    formProperty: 'last_name',
                    formValues: formValues,
                  ),
                  const SizedBox(
                    height: 30,
                  ),
                  CustomInputField(
                    labelText: 'Correo',
                    hintText: 'Correo del usuario',
                    keyboardType: TextInputType.emailAddress,
                    formProperty: 'email',
                    formValues: formValues,
                  ),
                  const SizedBox(
                    height: 30,
                  ),
                  CustomInputField(
                    labelText: 'Contraseña',
                    hintText: 'Contraseña del usuario',
                    keyboardType: TextInputType.emailAddress,
                    obscureText: true,
                    formProperty: 'password',
                    formValues: formValues,
                  ),
                  const SizedBox(
                    height: 30,
                  ),
                  DropdownButtonFormField<String>(
                    value: 'Admin',
                    items: const [
                      DropdownMenuItem(value: 'Admin', child: Text('Admin')),
                      DropdownMenuItem(
                          value: 'SuperUser', child: Text('SuperUser')),
                      DropdownMenuItem(
                          value: 'Developer', child: Text('Developer')),
                      DropdownMenuItem(
                          value: 'jr Developer', child: Text('Jr Developer')),
                    ],
                    onChanged: (value) {
                      print(value);
                      formValues['role'] = value ?? 'Admin';
                    },
                  ),
                  ElevatedButton(
                    onPressed: () {
                      // ocultar el teclado
                      FocusScope.of(context).requestFocus(FocusNode());
                      if (!myFormKey.currentState!.validate()) {
                        print('Formulario no valido');
                        return;
                      }

                      // TODO: imprimir valores del formulario
                      print(formValues);
                    },
                    child: const SizedBox(
                      width: double.infinity,
                      child: Center(child: Text('Guardar')),
                    ),
                  )
                ],
              ),
            )),
      ),
    );
  }
}
