import 'package:flutter/material.dart';
import 'package:prototipo/screens/send_email.dart';

class RecoverPass extends StatefulWidget {
  const RecoverPass({Key? key}) : super(key: key);

  @override
  _RecoverPassState createState() => _RecoverPassState();
}

class _RecoverPassState extends State<RecoverPass> {
  @override
  Widget build(BuildContext context) {
    Size _size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
        title: const Text("Recuperar Senha"),
        centerTitle: true,
        backgroundColor: Colors.redAccent,
      ),
      body: Center(
        child: SingleChildScrollView(
          child: Column(
            children: <Widget>[
              Container(
                padding: EdgeInsets.only(
                    left: _size.width * 0.1, right: _size.width * 0.1),
                child: const Text(
                  "Utilize o e-mail em que foi realizado o cadastro!",
                  style: TextStyle(
                      fontSize: 25,
                      fontWeight: FontWeight.bold,
                      color: Colors.blueGrey),
                  textAlign: TextAlign.center,
                ),
              ),
              SizedBox(height: _size.height * 0.02),
              Icon(
                Icons.mail_outline,
                size: _size.height * 0.2,
                color: Colors.redAccent,
              ),
              SizedBox(height: _size.height * 0.05),
              //================================================================
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
              SizedBox(height: _size.height * 0.025),
              //================================================================
              TextButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => const SendEmail()),
                  );
                },
                child: const Text("Solicitar Recuperação"),
                style: TextButton.styleFrom(
                  primary: Colors.white,
                  backgroundColor: Colors.redAccent,
                  minimumSize: Size(_size.width * 0.78, 50),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(25),
                  ),
                ),
              ),
              //================================================================
              SizedBox(height: _size.height * 0.04),
            ],
          ),
        ),
      ),
    );
  }
}
