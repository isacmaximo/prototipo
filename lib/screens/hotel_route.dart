import 'package:flutter/material.dart';

class HotelRoute extends StatefulWidget {
  const HotelRoute({Key? key}) : super(key: key);

  @override
  _HotelRouteState createState() => _HotelRouteState();
}

class _HotelRouteState extends State<HotelRoute> {
  @override
  Widget build(BuildContext context) {
    Size _size = MediaQuery.of(context).size;

    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text("Rotas"),
        backgroundColor: Colors.redAccent,
      ),
      body: Center(
        child: SingleChildScrollView(
          child: Column(
            children: <Widget>[
              Container(
                height: _size.height * 0.95,
                width: _size.width * 0.95,
                decoration: const BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage('assets/rotas.jpeg'),
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
