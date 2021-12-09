import 'package:flutter/material.dart';
import 'package:prototipo/screens/initial_page.dart';
import 'package:prototipo/screens/new_pass.dart';

class SendEmail extends StatefulWidget {
  const SendEmail({Key? key}) : super(key: key);

  @override
  _SendEmailState createState() => _SendEmailState();
}

class _SendEmailState extends State<SendEmail> {
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
                  "Pronto! Um e-mail de recuperação foi enviado!",
                  style: TextStyle(
                      fontSize: 25,
                      fontWeight: FontWeight.bold,
                      color: Colors.blueGrey),
                  textAlign: TextAlign.center,
                ),
              ),
              SizedBox(height: _size.height * 0.02),
              Icon(
                Icons.forward_to_inbox,
                size: _size.height * 0.2,
                color: Colors.redAccent,
              ),
              SizedBox(height: _size.height * 0.02),
              TextButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const InitialPage()),
                  );
                },
                onLongPress: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => const NewPass()),
                  );
                },
                child: const Text("Ok, retornar para a página inicial"),
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
