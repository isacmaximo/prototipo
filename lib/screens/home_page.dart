import 'package:flutter/material.dart';
import 'package:prototipo/screens/points_screen.dart';
import 'package:prototipo/screens/restaurant_list.dart';
import 'package:prototipo/screens/restaurant_route.dart';

import 'hotel_list.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    Size _size = MediaQuery.of(context).size;
    return Scaffold(
      body: SingleChildScrollView(
        child: Center(
          child: Padding(
            padding: EdgeInsets.only(
                left: _size.width * 0.02, right: _size.width * 0.02),
            child: Column(
              children: <Widget>[
                SizedBox(
                  height: _size.height * 0.15,
                ),
                //input de inserir local
                Container(
                  alignment: Alignment.center,
                  child: Container(
                    width: _size.width * 0.8,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      border: Border.all(
                          width: 1,
                          color: Colors.redAccent,
                          style: BorderStyle.solid),
                    ),
                    child: const TextField(
                      decoration: InputDecoration(
                          hintText: "Inserir local",
                          contentPadding: EdgeInsets.all(15),
                          border: InputBorder.none),
                    ),
                  ),
                ),
                SizedBox(height: _size.height * 0.1),
                //Botão1
                Padding(
                  padding: EdgeInsets.only(
                      left: _size.width * 0.08, right: _size.width * 0.02),
                  child: Row(
                    children: [
                      Column(
                        children: [
                          ElevatedButton(
                            onPressed: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => const HotelList()),
                              );
                            },
                            child: const Icon(
                              Icons.location_city,
                              size: 60,
                            ),
                            style: ElevatedButton.styleFrom(
                                shape: const CircleBorder(),
                                fixedSize: const Size(100, 100),
                                padding: const EdgeInsets.all(10),
                                primary: Colors.redAccent),
                          ),
                          const SizedBox(height: 15),
                          const Text(
                            "Hotéis",
                            style: TextStyle(
                                fontSize: 23,
                                fontWeight: FontWeight.bold,
                                color: Colors.blueGrey),
                          )
                        ],
                      ),

                      const SizedBox(width: 75),

                      //Botão2
                      Column(
                        children: [
                          ElevatedButton(
                            onPressed: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) =>
                                        const RestaurantList()),
                              );
                            },
                            child: const Icon(
                              Icons.restaurant,
                              size: 60,
                            ),
                            style: ElevatedButton.styleFrom(
                                shape: const CircleBorder(),
                                fixedSize: const Size(100, 100),
                                padding: const EdgeInsets.all(10),
                                primary: Colors.redAccent),
                          ),
                          const SizedBox(height: 15),
                          const Text(
                            "Restaurantes",
                            style: TextStyle(
                                fontSize: 23,
                                fontWeight: FontWeight.bold,
                                color: Colors.blueGrey),
                          )
                        ],
                      ),
                    ],
                  ),
                ),

                const SizedBox(height: 60),
                //===========================================

                Padding(
                  padding: EdgeInsets.only(
                      left: _size.width * 0.08, right: _size.width * 0.02),
                  child: Row(
                    children: [
                      Column(
                        children: [
                          ElevatedButton(
                            onPressed: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => const PointScreen()),
                              );
                            },
                            child: const Icon(
                              Icons.favorite,
                              size: 63,
                            ),
                            style: ElevatedButton.styleFrom(
                                shape: const CircleBorder(),
                                fixedSize: const Size(100, 100),
                                padding: const EdgeInsets.only(top: 7),
                                primary: Colors.redAccent),
                          ),
                          const SizedBox(height: 15),
                          const Text(
                            "Pontos\nTurísticos",
                            textAlign: TextAlign.center,
                            style: TextStyle(
                                fontSize: 23,
                                fontWeight: FontWeight.bold,
                                color: Colors.blueGrey),
                          )
                        ],
                      ),

                      const SizedBox(width: 93),

                      //Botão2
                      Column(
                        children: [
                          ElevatedButton(
                            onPressed: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) =>
                                        const RestaurantRoute()),
                              );
                            },
                            child: const Icon(
                              Icons.subdirectory_arrow_right,
                              size: 68,
                            ),
                            style: ElevatedButton.styleFrom(
                                shape: const CircleBorder(),
                                fixedSize: const Size(100, 100),
                                padding:
                                    const EdgeInsets.only(top: 5, left: 10),
                                primary: Colors.redAccent),
                          ),
                          const SizedBox(height: 15),
                          const Text(
                            "Rotas",
                            style: TextStyle(
                                fontSize: 23,
                                fontWeight: FontWeight.bold,
                                color: Colors.blueGrey),
                          ),
                          const Text(
                            "",
                            style: TextStyle(
                                fontSize: 23,
                                fontWeight: FontWeight.bold,
                                color: Colors.blueGrey),
                          )
                        ],
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
