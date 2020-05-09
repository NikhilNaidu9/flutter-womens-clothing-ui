import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:flutter/rendering.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
        body: ListView(
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.only(left: 16.0, right: 16.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  Text(
                    'Categories',
                    style: TextStyle(
                        fontSize: 30.0,
                        color: Colors.black,
                        fontFamily: 'Montserrat'),
                  ),
                  IconButton(
                    icon: Icon(
                      Icons.search,
                      color: Colors.black,
                    ),
                    onPressed: () {},
                    iconSize: 30.0,
                  )
                ],
              ),
            ),
            Column(
              children: <Widget>[
                Container(
                  height: 180,
                  child: ListView(
                    scrollDirection: Axis.horizontal,
                    children: <Widget>[
                      _buildCategoryCard('Jeans', 'assets/jeans.jpeg', 'white'),
                      _buildCategoryCard('Shirt', 'assets/shirt.jpg', 'white'),
                      _buildCategoryCard('Coat', 'assets/coat.jpeg', 'white'),
                      _buildCategoryCard('Dress', 'assets/dress.png', 'white'),
                    ],
                  ),
                ),
                SizedBox(
                  height: 10.0,
                ),
                Container(
                  height: 1.0,
                  width: double.infinity,
                  decoration: BoxDecoration(
                    color: Colors.grey[300],
                  ),
                ),
                SizedBox(
                  height: 10.0,
                ),
                Container(
                  height: 5.0,
                  width: 40.0,
                  decoration: BoxDecoration(
                      color: Colors.grey[200],
                      borderRadius: BorderRadius.circular(30.0)),
                ),
                Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      Text(
                        'Choose your look',
                        style: TextStyle(
                            color: Colors.black,
                            fontWeight: FontWeight.bold,
                            fontSize: 27.0,
                            fontFamily: 'Montserrat'),
                      ),
                      IconButton(
                        icon: Icon(Icons.settings),
                        onPressed: () {},
                        iconSize: 27.0,
                      )
                    ],
                  ),
                ),
                _buildProductsDetailCard('Summer Vibes', 'assets/girl.jpeg'),
                SizedBox(
                  height: 20.0,
                ),
                _buildProductsDetailCard('Summer Vibes', 'assets/girl.jpeg'),
                SizedBox(
                  height: 20.0,
                ),
                _buildProductsDetailCard('Summer Vibes', 'assets/girl.jpeg'),
                SizedBox(
                  height: 20.0,
                ),
                _buildProductsDetailCard('Summer Vibes', 'assets/girl.jpeg')
              ],
            )
          ],
        ));
  }

  _buildCategoryCard(
    String name,
    String image,
    String color,
  ) {
    return Container(
      decoration: BoxDecoration(color: Colors.white),
      child: Padding(
        padding: const EdgeInsets.only(left: 16.0, top: 25.0),
        child: Column(
          children: <Widget>[
            Container(
              height: 100.0,
              width: 100.0,
              decoration: BoxDecoration(
                color: Colors.pink[200],
                borderRadius: BorderRadius.circular(75.0),
              ),
              child: Center(
                child: Container(
                  height: 50.0,
                  width: 50.0,
                  decoration: BoxDecoration(
                      color: Colors.transparent,
                      borderRadius: BorderRadius.circular(25.0),
                      image: DecorationImage(
                          image: AssetImage(image), fit: BoxFit.cover)),
                ),
              ),
            ),
            SizedBox(
              height: 10.0,
            ),
            Text(
              name,
              style: TextStyle(
                  color: Colors.black,
                  fontSize: 16.0,
                  fontFamily: 'Montserrat'),
            )
          ],
        ),
      ),
    );
  }

  _buildProductsDetailCard(
    String name,
    String image,
  ) {
    return Container(
      height: 350,
      width: MediaQuery.of(context).size.width - 40,
      decoration: BoxDecoration(
          border: Border.all(width: 0.5, color: Colors.grey),
          borderRadius: BorderRadius.circular(20.0)),
      child: Padding(
        padding: const EdgeInsets.only(left: 16.0),
        child: Row(
          children: <Widget>[
            Container(
              height: 300,
              width: 100,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10.0),
                  image: DecorationImage(
                      image: AssetImage(image), fit: BoxFit.cover)),
            ),
            SizedBox(
              width: 10.0,
            ),
            Container(
              padding: EdgeInsets.only(top: 18.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Text(
                    name,
                    style: TextStyle(
                        color: Colors.black,
                        fontWeight: FontWeight.bold,
                        fontSize: 18.0,
                        fontFamily: 'Montserrat'),
                  ),
                  Text(
                    '\$280',
                    style: TextStyle(
                        color: Colors.orangeAccent,
                        fontWeight: FontWeight.bold,
                        fontSize: 16.0,
                        fontFamily: 'Montserrat'),
                  ),
                  SizedBox(
                    height: 40.0,
                  ),
                  Row(
                    children: <Widget>[
                      Container(
                        height: 40,
                        width: 40,
                        decoration: BoxDecoration(
                            color: Colors.grey[200],
                            borderRadius: BorderRadius.circular(10.0),
                            image: DecorationImage(
                                image: AssetImage('assets/dress.png'),
                                fit: BoxFit.cover)),
                      ),
                      SizedBox(
                        width: 10.0,
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          Text(
                            'Summer Dress',
                            style: TextStyle(
                                color: Colors.black,
                                fontSize: 14.0,
                                fontFamily: 'Montserrat'),
                          ),
                          Text(
                            '\$100',
                            style: TextStyle(
                                color: Colors.orangeAccent,
                                fontWeight: FontWeight.bold,
                                fontSize: 16.0,
                                fontFamily: 'Montserrat'),
                          ),
                        ],
                      )
                    ],
                  ),
                  SizedBox(
                    height: 10.0,
                  ),
                  Row(
                    children: <Widget>[
                      Container(
                        height: 40,
                        width: 40,
                        decoration: BoxDecoration(
                            color: Colors.grey,
                            borderRadius: BorderRadius.circular(10.0),
                            image: DecorationImage(
                                image: AssetImage('assets/shoes.jpeg'),
                                fit: BoxFit.cover)),
                      ),
                      SizedBox(
                        width: 10.0,
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          Text(
                            'White Rainy Shoes',
                            style: TextStyle(
                                color: Colors.black,
                                fontSize: 14.0,
                                fontFamily: 'Montserrat'),
                          ),
                          Text(
                            '\$120',
                            style: TextStyle(
                                color: Colors.orangeAccent,
                                fontWeight: FontWeight.bold,
                                fontSize: 16.0,
                                fontFamily: 'Montserrat'),
                          ),
                        ],
                      )
                    ],
                  ),
                  SizedBox(
                    height: 10.0,
                  ),
                  Row(
                    children: <Widget>[
                      Container(
                        height: 40,
                        width: 40,
                        decoration: BoxDecoration(
                            color: Colors.grey,
                            borderRadius: BorderRadius.circular(10.0),
                            image: DecorationImage(
                                image: AssetImage('assets/glasses.jpeg'),
                                fit: BoxFit.cover)),
                      ),
                      SizedBox(
                        width: 10.0,
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          Text(
                            'White Sunglasses',
                            style: TextStyle(
                                color: Colors.black,
                                fontSize: 14.0,
                                fontFamily: 'Montserrat'),
                          ),
                          Text(
                            '\$60',
                            style: TextStyle(
                                color: Colors.orangeAccent,
                                fontWeight: FontWeight.bold,
                                fontSize: 16.0,
                                fontFamily: 'Montserrat'),
                          ),
                        ],
                      )
                    ],
                  ),
                  SizedBox(
                    height: 40.0,
                  ),
                  Material(
                    child: GestureDetector(
                      onTap: () {},
                      child: Container(
                        height: 40,
                        width: 180,
                        decoration: BoxDecoration(
                            color: Colors.transparent,
                            borderRadius: BorderRadius.circular(20.0),
                            border: Border.all(width: 1.0, color: Colors.grey)),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: <Widget>[
                            Icon(
                              Icons.shopping_cart,
                              color: Colors.black,
                            ),
                            Text(
                              'Add to cart',
                              style: TextStyle(
                                  color: Colors.black,
                                  fontWeight: FontWeight.bold,
                                  fontSize: 16.0,
                                  fontFamily: 'Montserrat'),
                            ),
                          ],
                        ),
                      ),
                    ),
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
