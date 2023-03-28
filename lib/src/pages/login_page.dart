import 'package:flutter/material.dart';
//import 'package:login_project/components/my_button.dart';
import 'package:componentes/components/my_button.dart';
//import 'package:login_project/components/my_textfield.dart';
import 'package:componentes/components/my_textfield.dart';
//import 'package:login_project/components/square_tile.dart';
import 'package:componentes/components/square_tile.dart';

class LoginPage extends StatelessWidget {
  LoginPage({super.key});

  //contralador de edición de texto
  final usernameController = TextEditingController();
  final passwordController = TextEditingController();

  void InicioUsuario() {}

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
        body: SafeArea(
          child: Center(
            child: Column(
              children: [
                const SizedBox(height: 50),

                //logo
                /*const Icon(
          Icons.lock,
          size:100),

        const SizedBox(height: 50),*/

                 Column(
                  children: [
                    CircleAvatar(
                      radius: 100.0,
                      backgroundColor: Colors.black,
                      child: CircleAvatar(
                        radius: 99,
                        backgroundImage: AssetImage('lib/images/chat.png'),
                      ),
                    ),
                  ],
                ),

                //text widget Bienvenida
                const Center(
                  child: Text(
                    'THE KEY',
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 20,
                    ),
                  ),
                ),

                const SizedBox(height: 20),

                //username textfield
                MyTextField(
                  controller: usernameController,
                  hintText: 'Usuario',
                  obscureText: false,
                ),
                const SizedBox(height: 10),

                //password textfield
                MyTextField(
                  controller: passwordController,
                  hintText: 'Contraseña',
                  obscureText: true,
                ),
                const SizedBox(height: 10),

                //¿Olvidó la contraseña?
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 25.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      Text(
                        'Forgot Password?',
                        style: TextStyle(color: Colors.grey[600]),
                      ),
                    ],
                  ),
                ),

                const SizedBox(height: 25),
                //log in button
                const MyButton(),

                const SizedBox(height: 15),

                //or continue with
                Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 25.0),
                    child: Row(
                      children: [
                        Expanded(
                          child: Divider(
                            thickness: 0.5,
                            color: Colors.grey[400],
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 10.0),
                          child: Text(
                            'OR',
                            style: TextStyle(color: Colors.grey[700]),
                          ),
                        ),
                        Expanded(
                          child: Divider(
                            thickness: 0.5,
                            color: Colors.grey[400],
                          ),
                        )
                      ],
                    )),

                const SizedBox(height: 25),

                //google sign in  button
                // ignore: prefer_const_constructors
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: const [
                    SquareTile(imagePath: 'lib/images/google.png'),
                  ],
                ),
              ],
            ),
          ),
        ));
  }
}
