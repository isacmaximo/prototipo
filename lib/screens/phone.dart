import 'package:flutter/material.dart';

class PhoneRoute extends StatefulWidget {
  const PhoneRoute({Key? key}) : super(key: key);

  @override
  _PhoneRouteState createState() => _PhoneRouteState();
}

class _PhoneRouteState extends State<PhoneRoute> {
  @override
  Widget build(BuildContext context) {
    Size _size = MediaQuery.of(context).size;

    return Scaffold(
      body: Center(
        child: SingleChildScrollView(
          child: Column(
            children: <Widget>[
              Container(
                height: _size.height * 0.95,
                width: _size.width * 0.95,
                decoration: const BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage('assets/telefone.jpeg'),
                    fit: BoxFit.fill,
                  ),
                  shape: BoxShape.rectangle,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
