import 'package:estudocheck/Pages/home_page.dart';
import 'package:flutter/material.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _MyWidgetState();
}

class _MyWidgetState extends State<LoginPage> {
  final _formKey = GlobalKey<FormState>();
  final TextEditingController _reController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Padding(
      padding: const EdgeInsets.all(20.0),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Form(
              key: _formKey,
              autovalidateMode: AutovalidateMode.disabled,
              child: Column(
                children: [
                  TextFormField(
                    controller: _reController,
                    obscureText: false,
                    validator: (value) {
                      if (!_reController.text.contains('@')) {
                        return 'E-mail invalido';
                      }
                    },
                    decoration: InputDecoration(
                        labelText: 'Email',
                        labelStyle: TextStyle(color: Colors.grey)),
                  ),
                  const SizedBox(
                    height: 25,
                  ),
                  TextFormField(
                    controller: _passwordController,
                    obscureText: true,
                    validator: (value) {
                      if (_passwordController.text.length < 4) {
                        return 'Senha deve ter mais de 4 caracteres';
                      }
                    },
                    decoration: InputDecoration(
                        labelText: 'Senha',
                        labelStyle: TextStyle(color: Colors.grey)),
                  ),
                  const SizedBox(
                    height: 25,
                  ),
                  ElevatedButton(
                      onPressed: () {
                        if (_formKey.currentState!.validate()) {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) =>
                                      HomePage(email: _reController.text)));
                        }
                        ;
                      },
                      child: const Row(
                        children: [
                          Text('Login'),
                          Icon(Icons.forward),
                        ],
                      ))
                ],
              ))
        ],
      ),
    ));
  }
}
