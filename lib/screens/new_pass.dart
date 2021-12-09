import 'package:flutter/material.dart';
import 'package:prototipo/screens/sucess_pass.dart';

class NewPass extends StatefulWidget {
  const NewPass({Key? key}) : super(key: key);

  @override
  _NewPassState createState() => _NewPassState();
}

class _NewPassState extends State<NewPass> {
  @override
  Widget build(BuildContext context) {
    Size _size = MediaQuery.of(context).size;
    return Scaffold(
      body: Center(
        child: SingleChildScrollView(
          child: Column(
            children: <Widget>[
              Icon(
                Icons.lock_open,
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
                        hintText: "Nova senha",
                        contentPadding: EdgeInsets.all(15),
                        border: InputBorder.none),
                  ),
                ),
              ),
              SizedBox(height: _size.height * 0.025),
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
                        hintText: "Confirme a nova senha",
                        contentPadding: EdgeInsets.all(15),
                        border: InputBorder.none),
                  ),
                ),
              ),
              SizedBox(height: _size.height * 0.025),
              TextButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const SucessNewPass()),
                  );
                },
                child: const Text("Salvar Senha"),
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
