import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:prototipo/screens/hotel_page_screen.dart';
import 'package:prototipo/screens/restaurant_page.dart';

class HotelList extends StatefulWidget {
  const HotelList({Key? key}) : super(key: key);

  @override
  _HotelListState createState() => _HotelListState();
}

class _HotelListState extends State<HotelList> {
  @override
  Widget build(BuildContext context) {
    Size _size = MediaQuery.of(context).size;

    return Scaffold(
      body: Center(
        child: SingleChildScrollView(
          child: Padding(
            padding: EdgeInsets.all(_size.width * 0.05),
            child: Column(
              children: <Widget>[
                SizedBox(
                  width: _size.width * 0.9,
                  child: GestureDetector(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const HotelPageScreen()),
                      );
                    },
                    child: Card(
                      color: Colors.grey[200],
                      elevation: 5,
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(16.0)),
                      child: Padding(
                        //padding: EdgeInsets.all(size.width * 0.04),
                        padding: EdgeInsets.only(
                          top: _size.width * 0.04,
                          right: _size.width * 0.04,
                          left: _size.width * 0.04,
                          bottom: _size.width * 0.04,
                        ),
                        child: Column(
                          children: <Widget>[
                            SizedBox(
                              height: _size.height * 0.005,
                            ),
                            Column(
                              mainAxisAlignment: MainAxisAlignment.spaceAround,
                              children: [
                                const Text(
                                  "Helius Hotel",
                                  style: TextStyle(
                                    fontSize: 20,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                                SizedBox(
                                  height: _size.height * 0.01,
                                ),
                                Container(
                                  height: 65.0,
                                  width: 65.0,
                                  decoration: const BoxDecoration(
                                    image: DecorationImage(
                                      image: AssetImage('assets/h1.jpg'),
                                      fit: BoxFit.fill,
                                    ),
                                    shape: BoxShape.circle,
                                  ),
                                ),
                              ],
                            ),
                            SizedBox(
                              height: _size.height * 0.008,
                            ),
                            const Text(
                              "Hotel com preço acessível",
                              style: TextStyle(
                                  fontSize: 16,
                                  fontStyle: FontStyle.italic,
                                  color: Colors.grey),
                            ),
                            SizedBox(height: _size.height * 0.01),
                            RatingBar.builder(
                              initialRating: 3.5,
                              minRating: 3.5,
                              maxRating: 3.5,
                              direction: Axis.horizontal,
                              allowHalfRating: true,
                              itemCount: 5,
                              itemSize: _size.height * 0.03,
                              itemPadding:
                                  const EdgeInsets.symmetric(horizontal: 2.0),
                              itemBuilder: (context, _) => const Icon(
                                Icons.star,
                                color: Colors.redAccent,
                              ),
                              onRatingUpdate: (rating) {
                                // ignore: avoid_print
                                print(rating);
                              },
                            ),
                            SizedBox(
                              height: _size.height * 0.005,
                            ),
                            const Text(
                              "3.5",
                              style: TextStyle(
                                  fontSize: 16, fontWeight: FontWeight.bold),
                            ),
                            SizedBox(
                              height: _size.height * 0.001,
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                ),
                //==============================================================
                SizedBox(
                  height: _size.height * 0.01,
                ),

                SizedBox(
                  width: _size.width * 0.9,
                  child: GestureDetector(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const HotelPageScreen()),
                      );
                    },
                    child: Card(
                      color: Colors.grey[200],
                      elevation: 5,
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(16.0)),
                      child: Padding(
                        //padding: EdgeInsets.all(size.width * 0.04),
                        padding: EdgeInsets.only(
                          top: _size.width * 0.04,
                          right: _size.width * 0.04,
                          left: _size.width * 0.04,
                          bottom: _size.width * 0.04,
                        ),
                        child: Column(
                          children: <Widget>[
                            SizedBox(
                              height: _size.height * 0.005,
                            ),
                            Column(
                              mainAxisAlignment: MainAxisAlignment.spaceAround,
                              children: [
                                const Text(
                                  "Turi Hotel",
                                  style: TextStyle(
                                    fontSize: 20,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                                SizedBox(
                                  height: _size.height * 0.01,
                                ),
                                Container(
                                  height: 65.0,
                                  width: 65.0,
                                  decoration: const BoxDecoration(
                                    image: DecorationImage(
                                      image: AssetImage('assets/hotel.jpg'),
                                      fit: BoxFit.fill,
                                    ),
                                    shape: BoxShape.circle,
                                  ),
                                ),
                              ],
                            ),
                            SizedBox(
                              height: _size.height * 0.008,
                            ),
                            const Text(
                              "Hotel grande e com boa vista",
                              style: TextStyle(
                                  fontSize: 16,
                                  fontStyle: FontStyle.italic,
                                  color: Colors.grey),
                            ),
                            SizedBox(height: _size.height * 0.01),
                            RatingBar.builder(
                              initialRating: 4.5,
                              minRating: 4.5,
                              maxRating: 4.5,
                              direction: Axis.horizontal,
                              allowHalfRating: true,
                              itemCount: 5,
                              itemSize: _size.height * 0.03,
                              itemPadding:
                                  const EdgeInsets.symmetric(horizontal: 2.0),
                              itemBuilder: (context, _) => const Icon(
                                Icons.star,
                                color: Colors.redAccent,
                              ),
                              onRatingUpdate: (rating) {
                                // ignore: avoid_print
                                print(rating);
                              },
                            ),
                            SizedBox(
                              height: _size.height * 0.005,
                            ),
                            const Text(
                              "4.7",
                              style: TextStyle(
                                  fontSize: 16, fontWeight: FontWeight.bold),
                            ),
                            SizedBox(
                              height: _size.height * 0.001,
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                ),
                //==============================================================
                SizedBox(
                  height: _size.height * 0.01,
                ),
                SizedBox(
                  width: _size.width * 0.9,
                  child: GestureDetector(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const RestaurantPage()),
                      );
                    },
                    child: Card(
                      color: Colors.grey[200],
                      elevation: 5,
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(16.0)),
                      child: Padding(
                        //padding: EdgeInsets.all(size.width * 0.04),
                        padding: EdgeInsets.only(
                          top: _size.width * 0.04,
                          right: _size.width * 0.04,
                          left: _size.width * 0.04,
                          bottom: _size.width * 0.04,
                        ),
                        child: Column(
                          children: <Widget>[
                            SizedBox(
                              height: _size.height * 0.005,
                            ),
                            Column(
                              mainAxisAlignment: MainAxisAlignment.spaceAround,
                              children: [
                                const Text(
                                  "Empire Residence",
                                  style: TextStyle(
                                    fontSize: 20,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                                SizedBox(
                                  height: _size.height * 0.01,
                                ),
                                Container(
                                  height: 65.0,
                                  width: 65.0,
                                  decoration: const BoxDecoration(
                                    image: DecorationImage(
                                      image: AssetImage('assets/h2.jpg'),
                                      fit: BoxFit.fill,
                                    ),
                                    shape: BoxShape.circle,
                                  ),
                                ),
                              ],
                            ),
                            SizedBox(
                              height: _size.height * 0.008,
                            ),
                            const Text(
                              "Hotel residencial com ambiente aquático",
                              style: TextStyle(
                                  fontSize: 16,
                                  fontStyle: FontStyle.italic,
                                  color: Colors.grey),
                            ),
                            SizedBox(height: _size.height * 0.01),
                            RatingBar.builder(
                              initialRating: 4,
                              minRating: 4,
                              maxRating: 4,
                              direction: Axis.horizontal,
                              allowHalfRating: true,
                              itemCount: 5,
                              itemSize: _size.height * 0.03,
                              itemPadding:
                                  const EdgeInsets.symmetric(horizontal: 2.0),
                              itemBuilder: (context, _) => const Icon(
                                Icons.star,
                                color: Colors.redAccent,
                              ),
                              onRatingUpdate: (rating) {
                                // ignore: avoid_print
                                print(rating);
                              },
                            ),
                            SizedBox(
                              height: _size.height * 0.005,
                            ),
                            const Text(
                              "4.0",
                              style: TextStyle(
                                  fontSize: 16, fontWeight: FontWeight.bold),
                            ),
                            SizedBox(
                              height: _size.height * 0.001,
                            ),
                            //==================================================
                          ],
                        ),
                      ),
                    ),
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
