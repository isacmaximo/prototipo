import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:prototipo/screens/home_page.dart';
import 'package:prototipo/screens/recover_pass.dart';
import 'package:prototipo/screens/register.dart';

//InitialPage
class InitialPage extends StatefulWidget {
  const InitialPage({Key? key}) : super(key: key);

  @override
  _InitialPageState createState() => _InitialPageState();
}

class _InitialPageState extends State<InitialPage> {
  @override
  Widget build(BuildContext context) {
    Size _size = MediaQuery.of(context).size;
    return Scaffold(
      body: SingleChildScrollView(
        child: Center(
          child: Padding(
            padding: const EdgeInsets.all(20),
            child: Column(
              children: <Widget>[
                const SizedBox(
                  height: 150,
                ),
                const Text(
                  "GUI",
                  style: TextStyle(color: Colors.black, fontSize: 80),
                ),
                const Text(
                  "TURI",
                  style: TextStyle(
                    color: Colors.red,
                    fontSize: 80,
                  ),
                ),
                const Icon(
                  Icons.place,
                  color: Colors.redAccent,
                  size: 80,
                ),
                const SizedBox(height: 80),
                //entrada de usuário
                Container(
                  alignment: Alignment.center,
                  child: Container(
                    width: _size.width * 0.75,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      border: Border.all(
                          width: 1,
                          color: Colors.redAccent,
                          style: BorderStyle.solid),
                    ),
                    child: const TextField(
                      decoration: InputDecoration(
                          hintText: "Usuário",
                          contentPadding: EdgeInsets.all(15),
                          border: InputBorder.none),
                    ),
                  ),
                ),
                const SizedBox(height: 15),
                //entrada de senha
                Container(
                  alignment: Alignment.center,
                  child: Container(
                    width: _size.width * 0.75,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      border: Border.all(
                          width: 1,
                          color: Colors.redAccent,
                          style: BorderStyle.solid),
                    ),
                    child: const TextField(
                      decoration: InputDecoration(
                          hintText: "Senha",
                          contentPadding: EdgeInsets.all(15),
                          border: InputBorder.none),
                    ),
                  ),
                ),
                TextButton(
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const RecoverPass()),
                      );
                    },
                    child: const Text(
                      "Esqueci minha senha",
                      style: TextStyle(fontSize: 13, color: Colors.blueGrey),
                    )),
                SizedBox(height: _size.height * 0.01),

                //botão de login/avançar
                TextButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => const HomePage()),
                    );
                  },
                  child: const Text("Avançar"),
                  style: TextButton.styleFrom(
                    primary: Colors.white,
                    backgroundColor: Colors.redAccent,
                    minimumSize: Size(_size.width * 0.78, 50),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(25),
                    ),
                  ),
                ),

                TextButton(
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const RegisterScreen()),
                      );
                    },
                    child: const Text(
                      "Não possui uma conta? Cadastre-se!",
                      style: TextStyle(color: Colors.blueGrey),
                    )),
                SizedBox(height: _size.height * 0.01),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
