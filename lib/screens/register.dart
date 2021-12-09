import 'package:flutter/material.dart';
import 'package:prototipo/screens/sucess_register.dart';

class RegisterScreen extends StatefulWidget {
  const RegisterScreen({Key? key}) : super(key: key);

  @override
  _RegisterScreenState createState() => _RegisterScreenState();
}

class _RegisterScreenState extends State<RegisterScreen> {
  @override
  Widget build(BuildContext context) {
    Size _size = MediaQuery.of(context).size;

    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text("Cadastro"),
        backgroundColor: Colors.redAccent,
      ),
      body: SingleChildScrollView(
        child: Center(
          child: Column(
            children: <Widget>[
              SizedBox(height: _size.height * 0.05),
              Icon(
                Icons.badge_rounded,
                size: _size.height * 0.2,
                color: Colors.redAccent,
              ),
              SizedBox(height: _size.height * 0.05),
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
                        hintText: "E-mail",
                        contentPadding: EdgeInsets.all(15),
                        border: InputBorder.none),
                  ),
                ),
              ),
              const SizedBox(height: 15),
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
                        hintText: "Nome de Usuário",
                        contentPadding: EdgeInsets.all(15),
                        border: InputBorder.none),
                  ),
                ),
              ),
              const SizedBox(height: 15),
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
              const SizedBox(height: 15),
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
                        hintText: "Confirme a senha",
                        contentPadding: EdgeInsets.all(15),
                        border: InputBorder.none),
                  ),
                ),
              ),
              SizedBox(height: _size.height * 0.03),
              TextButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const SucessRegisterScreen()),
                  );
                },
                child: const Text("Finalizar Cadastro"),
                style: TextButton.styleFrom(
                  primary: Colors.white,
                  backgroundColor: Colors.redAccent,
                  minimumSize: Size(_size.width * 0.75, 50),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(25),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
