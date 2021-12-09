import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:prototipo/screens/phone.dart';
import 'package:prototipo/screens/restaurant_route.dart';

class RestaurantPage extends StatefulWidget {
  const RestaurantPage({Key? key}) : super(key: key);

  @override
  _RestaurantPageState createState() => _RestaurantPageState();
}

class _RestaurantPageState extends State<RestaurantPage> {
  late double _rating = 3.0;

  void atualizarValor() {
    setState(() {
      _rating;
    });
  }

  @override
  Widget build(BuildContext context) {
    Size _size = MediaQuery.of(context).size;

    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.only(
              left: _size.width * 0.1,
              right: _size.width * 0.1,
              top: _size.width * 0.1,
              bottom: _size.height * 0.1),
          child: Center(
            child: Column(
              children: <Widget>[
                SizedBox(
                  height: _size.height * 0.05,
                ),
                Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    const Text(
                      "Turi Restaurant",
                      style: TextStyle(
                          fontSize: 35,
                          fontWeight: FontWeight.bold,
                          color: Colors.blueGrey),
                    ),
                    SizedBox(
                      height: _size.height * 0.03,
                    ),
                    //Informações
                    Container(
                      height: _size.height * 0.2,
                      width: _size.width * 0.7,
                      decoration: const BoxDecoration(
                        image: DecorationImage(
                          image: AssetImage('assets/restaurante.jpg'),
                          fit: BoxFit.fill,
                        ),
                        shape: BoxShape.circle,
                      ),
                    ),
                    SizedBox(
                      height: _size.height * 0.01,
                    ),
                    //==========================================================
                    SizedBox(
                      height: _size.height * 0.04,
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
                            right: _size.width * 0.04,
                            left: _size.width * 0.04,
                            bottom: _size.width * 0.02,
                          ),
                          child: Column(
                            children: <Widget>[
                              const Text(
                                "Rua:",
                                style: TextStyle(
                                    fontSize: 16,
                                    fontWeight: FontWeight.bold,
                                    color: Colors.blueGrey),
                              ),
                              SizedBox(
                                height: _size.height * 0.005,
                              ),
                              const Text(
                                "Ceu Azul     nº 530",
                                style: TextStyle(
                                    fontSize: 16,
                                    fontWeight: FontWeight.bold,
                                    color: Colors.grey),
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
                      width: _size.width * 0.9,
                      child: Card(
                        elevation: 5,
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(16.0)),
                        child: Padding(
                          //padding: EdgeInsets.all(size.width * 0.04),
                          padding: EdgeInsets.only(
                            top: _size.width * 0.02,
                            right: _size.width * 0.04,
                            left: _size.width * 0.04,
                            bottom: _size.width * 0.02,
                          ),
                          child: Column(
                            children: <Widget>[
                              const Text(
                                "Bairro:",
                                style: TextStyle(
                                    fontSize: 16,
                                    fontWeight: FontWeight.bold,
                                    color: Colors.blueGrey),
                              ),
                              SizedBox(
                                height: _size.height * 0.005,
                              ),
                              const Text(
                                "Lareiras",
                                style: TextStyle(
                                    fontSize: 16,
                                    fontWeight: FontWeight.bold,
                                    color: Colors.grey),
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
                      width: _size.width * 0.9,
                      child: Card(
                        elevation: 5,
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(16.0)),
                        child: Padding(
                          //padding: EdgeInsets.all(size.width * 0.04),
                          padding: EdgeInsets.only(
                            top: _size.width * 0.02,
                            right: _size.width * 0.04,
                            left: _size.width * 0.04,
                            bottom: _size.width * 0.02,
                          ),
                          child: Column(
                            children: <Widget>[
                              const Text(
                                "Telefone:",
                                style: TextStyle(
                                    fontSize: 16,
                                    fontWeight: FontWeight.bold,
                                    color: Colors.blueGrey),
                              ),
                              SizedBox(
                                height: _size.height * 0.005,
                              ),
                              const Text(
                                "(85) 99999-9999",
                                style: TextStyle(
                                    fontSize: 16,
                                    fontWeight: FontWeight.bold,
                                    color: Colors.grey),
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
                      height: _size.height * 0.03,
                    ),
                    Column(
                      children: <Widget>[
                        //Botão que irá direcionar para a página de rotas
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: [
                            TextButton(
                              onPressed: () {
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) =>
                                          const RestaurantRoute()),
                                );
                              },
                              child: const Text(
                                "Seguir Rota",
                                style: TextStyle(fontSize: 16),
                              ),
                              style: TextButton.styleFrom(
                                primary: Colors.white,
                                backgroundColor: Colors.redAccent,
                                minimumSize: Size(
                                    _size.width * 0.34, _size.height * 0.06),
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(4),
                                ),
                              ),
                            ),
                            TextButton(
                              onPressed: () {
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => const PhoneRoute()),
                                );
                              },
                              child: const Text(
                                "Ligar",
                                style: TextStyle(fontSize: 16),
                              ),
                              style: TextButton.styleFrom(
                                primary: Colors.white,
                                backgroundColor: Colors.redAccent,
                                minimumSize: Size(
                                    _size.width * 0.34, _size.height * 0.06),
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(4),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                    SizedBox(
                      height: _size.height * 0.05,
                    ),
                  ],
                ),

                //Imagens do local==============================================
                SizedBox(
                  height: _size.height * 0.08,
                ),
                const Text(
                  "Imagens do Local",
                  style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                      color: Colors.blueGrey),
                ),
                SizedBox(
                  height: _size.height * 0.015,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: <Widget>[
                    Container(
                      height: 85.0,
                      width: 100.0,
                      decoration: const BoxDecoration(
                        image: DecorationImage(
                          image: AssetImage('assets/r1.jpg'),
                          fit: BoxFit.fill,
                        ),
                        shape: BoxShape.rectangle,
                      ),
                    ),
                    Container(
                      height: 85.0,
                      width: 100.0,
                      decoration: const BoxDecoration(
                        image: DecorationImage(
                          image: AssetImage('assets/restaurante.jpg'),
                          fit: BoxFit.fill,
                        ),
                        shape: BoxShape.rectangle,
                      ),
                    ),
                    Container(
                      height: 85.0,
                      width: 100.0,
                      decoration: const BoxDecoration(
                        image: DecorationImage(
                          image: AssetImage('assets/r2.jpg'),
                          fit: BoxFit.fill,
                        ),
                        shape: BoxShape.rectangle,
                      ),
                    ),
                  ],
                ),
                //Comentários===================================================
                SizedBox(
                  height: _size.height * 0.08,
                ),
                const Text(
                  "Comentários",
                  style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                      color: Colors.blueGrey),
                ),
                SizedBox(
                  height: _size.height * 0.012,
                ),
                //==============================================================
                SizedBox(
                  width: _size.width * 0.9,
                  child: Card(
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
                          Container(
                            height: 50.0,
                            width: 50.0,
                            decoration: const BoxDecoration(
                              image: DecorationImage(
                                image: AssetImage('assets/person.png'),
                                fit: BoxFit.fill,
                              ),
                              shape: BoxShape.circle,
                            ),
                          ),
                          SizedBox(
                            height: _size.height * 0.008,
                          ),
                          const Text(
                            "Usuário 1",
                            style: TextStyle(
                                fontSize: 16, fontWeight: FontWeight.bold),
                          ),
                          SizedBox(
                            height: _size.height * 0.008,
                          ),
                          const Text(
                            "\" Lugar muito agradável \ne ambiente climatizado\"",
                            style: TextStyle(
                                fontSize: 14,
                                fontStyle: FontStyle.italic,
                                color: Colors.grey),
                          ),
                          SizedBox(height: _size.height * 0.01),
                          RatingBar.builder(
                            initialRating: 5,
                            minRating: 5,
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
                            "5.0",
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

                SizedBox(
                  width: _size.width * 0.9,
                  child: Card(
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
                          Container(
                            height: 50.0,
                            width: 50.0,
                            decoration: const BoxDecoration(
                              image: DecorationImage(
                                image: AssetImage('assets/person.png'),
                                fit: BoxFit.fill,
                              ),
                              shape: BoxShape.circle,
                            ),
                          ),
                          SizedBox(
                            height: _size.height * 0.008,
                          ),
                          const Text(
                            "Usuário 2",
                            style: TextStyle(
                                fontSize: 16, fontWeight: FontWeight.bold),
                          ),
                          SizedBox(
                            height: _size.height * 0.008,
                          ),
                          const Text(
                            "\" Ambiente interessante e bem localizado, apenas acho que pode melhorar na questão do horário de entrega dos pedidos!\"",
                            style: TextStyle(
                                fontSize: 14,
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
                            "4.5",
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
                SizedBox(
                  height: _size.height * 0.04,
                ),
                Card(
                  elevation: 20,
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(16.0)),
                  child: Padding(
                    //padding: EdgeInsets.all(size.width * 0.04),
                    padding: EdgeInsets.only(
                      top: 0.0,
                      right: _size.width * 0.04,
                      left: _size.width * 0.04,
                      bottom: _size.width * 0.04,
                    ),
                    child: Column(
                      children: <Widget>[
                        SizedBox(
                          height: _size.height * 0.005,
                        ),
                        /*const Text("Solicitante: ",
                            style: TextStyle(
                                fontWeight: FontWeight.bold, fontSize: 18)),*/
                        SizedBox(
                          height: _size.height * 0.02,
                        ),
                        SizedBox(
                          height: _size.height * 0.01,
                        ),
                        const Text(
                          "Deixe seu comentário",
                          style: TextStyle(
                              fontSize: 16, fontWeight: FontWeight.bold),
                        ),
                        Container(
                          margin: EdgeInsets.symmetric(
                              vertical: _size.height * 0.02),
                          padding: EdgeInsets.symmetric(
                              horizontal: _size.width * 0.02,
                              vertical: _size.height * 0.02),
                          width: _size.width * 0.8,
                          decoration: BoxDecoration(
                            color: Colors.redAccent.withOpacity(0.1),
                            borderRadius: BorderRadius.circular(29),
                          ),
                          child: const TextField(
                            keyboardType: TextInputType.multiline,
                            maxLines: null,
                            minLines: 5,
                            decoration: InputDecoration(
                              border: InputBorder.none,
                            ),
                          ),
                        ),
                        SizedBox(
                          height: _size.height * 0.02,
                        ),
                        RatingBar.builder(
                          initialRating: 3,
                          minRating: 1,
                          maxRating: 5,
                          direction: Axis.horizontal,
                          allowHalfRating: true,
                          itemCount: 5,
                          itemSize: _size.height * 0.03,
                          itemPadding:
                              const EdgeInsets.symmetric(horizontal: 4.0),
                          itemBuilder: (context, _) => const Icon(
                            Icons.star,
                            color: Colors.redAccent,
                          ),
                          onRatingUpdate: (rating) {
                            _rating = rating;
                            atualizarValor();
                            // ignore: avoid_print
                            print(rating);
                          },
                        ),
                        SizedBox(
                          height: _size.height * 0.02,
                        ),
                        Text(
                          "$_rating",
                          style: const TextStyle(
                              fontSize: 20, fontWeight: FontWeight.bold),
                        ),
                        SizedBox(
                          height: _size.height * 0.02,
                        ),
                        TextButton(
                          onPressed: () {},
                          child: const Text("Salvar Avaliação"),
                          style: TextButton.styleFrom(
                            primary: Colors.white,
                            backgroundColor: Colors.redAccent,
                            minimumSize:
                                Size(_size.width * 0.8, _size.height * 0.06),
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(25),
                            ),
                          ),
                        )
                      ],
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
