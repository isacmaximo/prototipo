import 'package:flutter/material.dart';
import 'package:prototipo/screens/initial_page.dart';

class SucessNewPass extends StatefulWidget {
  const SucessNewPass({Key? key}) : super(key: key);

  @override
  _SucessNewPassState createState() => _SucessNewPassState();
}

class _SucessNewPassState extends State<SucessNewPass> {
  @override
  Widget build(BuildContext context) {
    Size _size = MediaQuery.of(context).size;
    return Scaffold(
      body: Center(
        child: SingleChildScrollView(
          child: Column(
            children: <Widget>[
              Container(
                padding: EdgeInsets.only(
                    left: _size.width * 0.1, right: _size.width * 0.1),
                child: const Text(
                  "Senha recuperada com sucesso!",
                  style: TextStyle(
                      fontSize: 25,
                      fontWeight: FontWeight.bold,
                      color: Colors.blueGrey),
                  textAlign: TextAlign.center,
                ),
              ),
              SizedBox(height: _size.height * 0.08),
              Icon(
                Icons.check_circle,
                size: _size.height * 0.2,
                color: Colors.redAccent,
              ),
              SizedBox(height: _size.height * 0.08),
              TextButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const InitialPage()),
                  );
                },
                child: const Text("Ok, ir para a página inicial"),
                style: TextButton.styleFrom(
                  primary: Colors.white,
                  backgroundColor: Colors.redAccent,
                  minimumSize: Size(_size.width * 0.78, 50),
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
