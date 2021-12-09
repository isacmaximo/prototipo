import 'package:flutter/material.dart';
import 'package:prototipo/screens/hotel_route.dart';

class PointScreen extends StatefulWidget {
  const PointScreen({Key? key}) : super(key: key);

  @override
  _PointScreenState createState() => _PointScreenState();
}

class _PointScreenState extends State<PointScreen> {
  @override
  Widget build(BuildContext context) {
    Size _size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
        title: const Text("Pontos Turísticos"),
        centerTitle: true,
        backgroundColor: Colors.redAccent,
      ),
      body: Center(
        child: SingleChildScrollView(
          child: Column(
            children: <Widget>[
              SizedBox(
                height: _size.height * 0.02,
              ),
              SizedBox(
                width: _size.width * 0.9,
                child: Card(
                  elevation: 5,
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(16.0)),
                  child: Padding(
                    //padding: EdgeInsets.all(size.width * 0.04),
                    padding: EdgeInsets.only(
                      top: _size.width * 0.02,
                      right: _size.width * 0.06,
                      left: _size.width * 0.06,
                      bottom: _size.width * 0.02,
                    ),
                    child: Column(
                      children: <Widget>[
                        const Text(
                          "Estátua",
                          style: TextStyle(
                              fontSize: 20,
                              fontWeight: FontWeight.bold,
                              color: Colors.blueGrey),
                        ),
                        SizedBox(
                          height: _size.height * 0.02,
                        ),
                        Container(
                          height: _size.width * 0.4,
                          width: _size.width * 0.6,
                          decoration: const BoxDecoration(
                            image: DecorationImage(
                              image: AssetImage('assets/estatua.jpg'),
                              fit: BoxFit.fill,
                            ),
                            shape: BoxShape.rectangle,
                          ),
                        ),
                        SizedBox(
                          height: _size.height * 0.02,
                        ),
                        const Text(
                          "Estátua contruída há 500 anos, foi um presente que o arquiteto Turi deixou para os moradores da região",
                          style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.bold,
                            color: Colors.grey,
                          ),
                          textAlign: TextAlign.center,
                        ),
                        SizedBox(
                          height: _size.height * 0.01,
                        ),
                        TextButton(
                          onPressed: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => const HotelRoute()),
                            );
                          },
                          child: const Text(
                            "Ver Rota",
                            style: TextStyle(fontSize: 16),
                          ),
                          style: TextButton.styleFrom(
                            primary: Colors.white,
                            backgroundColor: Colors.redAccent,
                            minimumSize:
                                Size(_size.width * 0.34, _size.height * 0.05),
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(4),
                            ),
                          ),
                        ),
                        SizedBox(
                          height: _size.height * 0.001,
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: _size.height * 0.02,
              ),
              SizedBox(
                width: _size.width * 0.9,
                child: Card(
                  elevation: 5,
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(16.0)),
                  child: Padding(
                    //padding: EdgeInsets.all(size.width * 0.04),
                    padding: EdgeInsets.only(
                      top: _size.width * 0.02,
                      right: _size.width * 0.06,
                      left: _size.width * 0.06,
                      bottom: _size.width * 0.02,
                    ),
                    child: Column(
                      children: <Widget>[
                        const Text(
                          "Rio",
                          style: TextStyle(
                              fontSize: 20,
                              fontWeight: FontWeight.bold,
                              color: Colors.blueGrey),
                        ),
                        SizedBox(
                          height: _size.height * 0.02,
                        ),
                        Container(
                          height: _size.width * 0.4,
                          width: _size.width * 0.6,
                          decoration: const BoxDecoration(
                            image: DecorationImage(
                              image: AssetImage('assets/rio.jpg'),
                              fit: BoxFit.fill,
                            ),
                            shape: BoxShape.rectangle,
                          ),
                        ),
                        SizedBox(
                          height: _size.height * 0.02,
                        ),
                        const Text(
                          "Maior rio da região, com belas águas e uma grande variedes de animais, é o local ideal para quem quer passear com a família e ter contato com a natureza",
                          style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.bold,
                            color: Colors.grey,
                          ),
                          textAlign: TextAlign.center,
                        ),
                        SizedBox(
                          height: _size.height * 0.01,
                        ),
                        TextButton(
                          onPressed: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => const HotelRoute()),
                            );
                          },
                          child: const Text(
                            "Ver Rota",
                            style: TextStyle(fontSize: 16),
                          ),
                          style: TextButton.styleFrom(
                            primary: Colors.white,
                            backgroundColor: Colors.redAccent,
                            minimumSize:
                                Size(_size.width * 0.34, _size.height * 0.05),
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(4),
                            ),
                          ),
                        ),
                        SizedBox(
                          height: _size.height * 0.001,
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: _size.height * 0.02,
              ),
              SizedBox(
                width: _size.width * 0.9,
                child: Card(
                  elevation: 5,
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(16.0)),
                  child: Padding(
                    //padding: EdgeInsets.all(size.width * 0.04),
                    padding: EdgeInsets.only(
                      top: _size.width * 0.02,
                      right: _size.width * 0.06,
                      left: _size.width * 0.06,
                      bottom: _size.width * 0.02,
                    ),
                    child: Column(
                      children: <Widget>[
                        const Text(
                          "Praça",
                          style: TextStyle(
                              fontSize: 20,
                              fontWeight: FontWeight.bold,
                              color: Colors.blueGrey),
                        ),
                        SizedBox(
                          height: _size.height * 0.02,
                        ),
                        Container(
                          height: _size.width * 0.4,
                          width: _size.width * 0.6,
                          decoration: const BoxDecoration(
                            image: DecorationImage(
                              image: AssetImage('assets/praca.jpg'),
                              fit: BoxFit.fill,
                            ),
                            shape: BoxShape.rectangle,
                          ),
                        ),
                        SizedBox(
                          height: _size.height * 0.02,
                        ),
                        const Text(
                          "Praça com boa iluminação, vendedores locais e quadra poliesportiva, ambiente ideal para vários tipos de atividades e lazer em geral",
                          style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.bold,
                            color: Colors.grey,
                          ),
                          textAlign: TextAlign.center,
                        ),
                        SizedBox(
                          height: _size.height * 0.01,
                        ),
                        TextButton(
                          onPressed: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => const HotelRoute()),
                            );
                          },
                          child: const Text(
                            "Ver Rota",
                            style: TextStyle(fontSize: 16),
                          ),
                          style: TextButton.styleFrom(
                            primary: Colors.white,
                            backgroundColor: Colors.redAccent,
                            minimumSize:
                                Size(_size.width * 0.34, _size.height * 0.05),
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(4),
                            ),
                          ),
                        ),
                        SizedBox(
                          height: _size.height * 0.001,
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: _size.height * 0.02,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
