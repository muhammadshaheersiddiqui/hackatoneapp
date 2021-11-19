import 'dart:html';
import 'dart:js';

import 'package:flutter/material.dart';
import 'package:hackatoneapp/cartone.dart';

import 'package:hackatoneapp/favorite.dart';
import 'package:hackatoneapp/home.dart';
import 'package:hackatoneapp/profile.dart';
import 'package:hackatoneapp/search.dart';

class second extends StatefulWidget {
  const second({Key? key}) : super(key: key);

  @override
  _secondState createState() => _secondState();
}

class _secondState extends State<second> {
  int _currentIndex = 0;
  Color _iconColor = Colors.black;
  Color _shoppingcartcolor = Colors.black;
  Color _shoppingcartcolors = Colors.black;
  Color _fav = Colors.black;
  Color _fav1 = Colors.black;
  Color _fav2 = Colors.black;
  Color _fav3 = Colors.black;
  Color _fav4 = Colors.black;
  Color _fav5 = Colors.black;
  Color _fav6 = Colors.black;
  Color _fav7 = Colors.black;
  Color _fav8 = Colors.black;
  Color _fav9 = Colors.black;
  Color _fav10 = Colors.black;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: Drawer(
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Container(
                  margin: EdgeInsets.only(left: 20, top: 20),
                  height: 40,
                  width: 150,
                  child: Row(
                    children: [
                      Container(
                        decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            border:
                                Border.all(color: Colors.green, width: 2.5)),
                        child: CircleAvatar(
                          radius: 20,
                          backgroundImage: NetworkImage(
                              'https://avatarfiles.alphacoders.com/285/thumb-1920-285776.jpg'),
                        ),
                      ),
                      SizedBox(
                        width: 10,
                      ),
                      Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Username',
                            style: TextStyle(
                                fontWeight: FontWeight.bold, fontSize: 11),
                          ),
                          Text(
                            'shaheer123456',
                            style: TextStyle(color: Colors.grey, fontSize: 10),
                          ),
                        ],
                      ),
                    ],
                  ),
                )
              ],
            ),
            SizedBox(
              height: 150,
            ),
            Divider(
              height: 20,
              thickness: 2,
            ),
            SizedBox(
              height: 20,
            ),
            Row(
              children: [
                Container(
                  margin: EdgeInsets.only(left: 10),
                  height: 30,
                  width: 275,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      IconButton(
                          onPressed: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (BuildContext context) => home()));
                          },
                          icon: Icon(
                            Icons.logout,
                            color: Colors.grey,
                            size: 16,
                          )),
                      SizedBox(
                        width: 5,
                      ),
                      FlatButton(
                        onPressed: () {
                          Navigator.push(context,
                              MaterialPageRoute(builder: (context) => home()));
                        },
                        child: Text('Logout'),
                      )
                    ],
                  ),
                )
              ],
            ),
            SizedBox(
              height: 20,
            ),
            Row(
              children: [
                Container(
                  margin: EdgeInsets.only(left: 10),
                  height: 30,
                  width: 275,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      IconButton(
                          onPressed: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => cartone()));
                          },
                          icon: Icon(
                            Icons.shopping_cart,
                            color: Colors.grey,
                            size: 16,
                          )),
                      SizedBox(
                        width: 5,
                      ),
                      FlatButton(
                        onPressed: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => cartone()));
                        },
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Text('Cart'),
                          ],
                        ),
                      )
                    ],
                  ),
                )
              ],
            ),
            SizedBox(
              height: 5,
            ),
            Row(
              children: [
                Container(
                  margin: EdgeInsets.only(left: 10),
                  height: 30,
                  width: 275,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      IconButton(
                          onPressed: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => favorite()));
                          },
                          icon: Icon(
                            Icons.favorite,
                            color: Colors.grey,
                            size: 16,
                          )),
                      SizedBox(
                        width: 5,
                      ),
                      FlatButton(
                        onPressed: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => favorite()));
                        },
                        child: Text('Favorite'),
                      )
                    ],
                  ),
                )
              ],
            ),
            SizedBox(
              height: 5,
            ),
            Row(
              children: [
                Container(
                  margin: EdgeInsets.only(left: 10),
                  height: 30,
                  width: 275,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      IconButton(
                          onPressed: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => profile()));
                          },
                          icon: Icon(
                            Icons.person,
                            color: Colors.grey,
                            size: 16,
                          )),
                      SizedBox(
                        width: 5,
                      ),
                      FlatButton(
                        onPressed: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => profile()));
                        },
                        child: Text('Profile'),
                      )
                    ],
                  ),
                )
              ],
            )
          ],
        ),
      ),
      appBar: AppBar(
        actions: <Widget>[
          IconButton(
              onPressed: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => favorite()));
              },
              icon: Icon(Icons.favorite)),
          IconButton(
              onPressed: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => cartone()));
              },
              icon: Icon(Icons.shopping_cart))
        ],
        centerTitle: true,
        iconTheme: IconThemeData(color: Colors.green),
        backgroundColor: Colors.white,
        title: Text(
          'Home Page',
          style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold),
        ),
      ),
      body: ListView(children: [
        Column(
          children: [
            Container(
              height: 90,
              child: ListView(
                scrollDirection: Axis.horizontal,
                shrinkWrap: true,
                children: [
                  Container(
                      margin: EdgeInsets.only(left: 5, top: 5),
                      decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(5),
                          boxShadow: [
                            BoxShadow(
                                color: Colors.grey.withOpacity(0.1),
                                spreadRadius: 1,
                                blurRadius: 10,
                                offset: Offset(0, 1))
                          ]),
                      width: 170,
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Container(
                            width: 50,
                            child: Image.network(
                                "https://media.istockphoto.com/photos/elegant-black-leather-shoes-picture-id172417586?k=20&m=172417586&s=612x612&w=0&h=DDjvQhRgSYcH2F5rVt8iohGvkqCIteYuTCq3wpJuUi4="),
                          ),
                          Container(
                            width: 110,
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Text(
                                  'Shoes',
                                  style: TextStyle(fontWeight: FontWeight.bold),
                                ),
                                SizedBox(
                                  height: 10,
                                ),
                                Text(
                                  '10 Pieces left',
                                  style: TextStyle(color: Colors.black),
                                )
                              ],
                            ),
                          ),
                        ],
                      )),
                  SizedBox(
                    width: 5,
                  ),
                  Container(
                      margin: EdgeInsets.only(left: 5, top: 5),
                      decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(5),
                          boxShadow: [
                            BoxShadow(
                                color: Colors.grey.withOpacity(0.1),
                                spreadRadius: 1,
                                blurRadius: 10,
                                offset: Offset(0, 1))
                          ]),
                      width: 170,
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Container(
                            width: 22,
                            child: Image.network(
                                "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTU-nH8D5oVokWBsrpzXEssVKCa4R4ufyLHnsA8yx7ENqjLSlrxUO3f3qC5__ZRq_jGL-Y&usqp=CAU"),
                          ),
                          Container(
                            width: 110,
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Text(
                                  'Suit',
                                  style: TextStyle(fontWeight: FontWeight.bold),
                                ),
                                SizedBox(
                                  height: 10,
                                ),
                                Text(
                                  '5 Pieces left',
                                  style: TextStyle(color: Colors.black),
                                )
                              ],
                            ),
                          ),
                        ],
                      )),
                  SizedBox(
                    width: 5,
                  ),
                  Container(
                      margin: EdgeInsets.only(left: 5, top: 5),
                      decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(5),
                          boxShadow: [
                            BoxShadow(
                                color: Colors.grey.withOpacity(0.1),
                                spreadRadius: 1,
                                blurRadius: 10,
                                offset: Offset(0, 1))
                          ]),
                      width: 170,
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Container(
                            width: 34,
                            child: Image.network(
                                "data:image/jpeg;base64,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"),
                          ),
                          Container(
                            width: 110,
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Text(
                                  'Shirts',
                                  style: TextStyle(fontWeight: FontWeight.bold),
                                ),
                                SizedBox(
                                  height: 10,
                                ),
                                Text(
                                  '18 Pieces left',
                                  style: TextStyle(color: Colors.black),
                                )
                              ],
                            ),
                          ),
                        ],
                      )),
                  SizedBox(
                    width: 5,
                  ),
                  Container(
                      margin: EdgeInsets.only(left: 5, top: 5),
                      decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(5),
                          boxShadow: [
                            BoxShadow(
                                color: Colors.grey.withOpacity(0.1),
                                spreadRadius: 1,
                                blurRadius: 10,
                                offset: Offset(0, 1))
                          ]),
                      width: 170,
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Container(
                            width: 25,
                            child: Image.network(
                                "https://admin.kaufmannstatic.com/Images/169545_sort_01-T20201215084313.jpg?i=169545_sort_01-T20201215084313.jpg"),
                          ),
                          Container(
                            width: 110,
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Text(
                                  'T-Shirts',
                                  style: TextStyle(fontWeight: FontWeight.bold),
                                ),
                                SizedBox(
                                  height: 10,
                                ),
                                Text(
                                  '9 Pieces left',
                                  style: TextStyle(color: Colors.black),
                                )
                              ],
                            ),
                          ),
                        ],
                      )),
                  SizedBox(
                    width: 5,
                  ),
                  Container(
                      margin: EdgeInsets.only(left: 5, top: 5, right: 5),
                      decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(5),
                          boxShadow: [
                            BoxShadow(
                                color: Colors.grey.withOpacity(0.1),
                                spreadRadius: 1,
                                blurRadius: 10,
                                offset: Offset(0, 1))
                          ]),
                      width: 180,
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Container(
                            width: 70,
                            child: Image.network(
                                "https://www.rebelsport.co.nz/globalassets/productimages/rebel/8160589/8160589_default_1.jpg?CatalogContentZoom-682131-1000-1000-75-0,0"),
                          ),
                          Container(
                            width: 110,
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Text(
                                  'Joggers',
                                  style: TextStyle(fontWeight: FontWeight.bold),
                                ),
                                SizedBox(
                                  height: 10,
                                ),
                                Text(
                                  '0 Pieces left',
                                  style: TextStyle(color: Colors.black),
                                )
                              ],
                            ),
                          ),
                        ],
                      )),
                  SizedBox(
                    width: 5,
                  ),
                  Container(
                      margin: EdgeInsets.only(left: 5, top: 5, right: 5),
                      decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(5),
                          boxShadow: [
                            BoxShadow(
                                color: Colors.grey.withOpacity(0.1),
                                spreadRadius: 1,
                                blurRadius: 10,
                                offset: Offset(0, 1))
                          ]),
                      width: 180,
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Container(
                            width: 30,
                            child: Image.network(
                                "https://cdn.vmartretail.com/images1/thumbnails/97049/640/1/143687804-97049373-1621482720.jpg"),
                          ),
                          Container(
                            width: 110,
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Text(
                                  'Jeans',
                                  style: TextStyle(fontWeight: FontWeight.bold),
                                ),
                                SizedBox(
                                  height: 10,
                                ),
                                Text(
                                  '3 Pieces left',
                                  style: TextStyle(color: Colors.black),
                                ),
                              ],
                            ),
                          ),
                        ],
                      )),
                ],
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Container(
              height: 200,
              width: 250,
              decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(5),
                  boxShadow: [
                    BoxShadow(
                        color: Colors.grey.withOpacity(0.5),
                        spreadRadius: 1,
                        blurRadius: 10,
                        offset: Offset(0, 15))
                  ]),
              child: Column(
                children: [
                  Row(
                    children: [
                      Container(
                        height: 30,
                        width: 250,
                        // color: Colors.grey,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            IconButton(
                              onPressed: () {
                                setState(() {
                                  if (_iconColor == Colors.black) {
                                    _iconColor = Colors.green;
                                  } else {
                                    _iconColor = Colors.black;
                                  }
                                });
                              },
                              icon: Icon(
                                Icons.favorite_outlined,
                                color: _iconColor,
                                size: 18,
                              ),
                              splashRadius: 3,
                            ),
                            Container(
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(5),
                                color: Colors.green,
                              ),
                              margin: EdgeInsets.only(right: 2, top: 3),
                              height: 20,
                              width: 38,
                              child: Center(
                                child: Text(
                                  "40% off",
                                  style: TextStyle(
                                      color: Colors.white, fontSize: 10),
                                ),
                              ),
                            )
                          ],
                        ),
                      )
                    ],
                  ),
                  Container(
                    height: 95,
                    width: 80,
                    child: Image.network(
                        "https://admin.kaufmannstatic.com/Images/169545_sort_01-T20201215084313.jpg?i=169545_sort_01-T20201215084313.jpg"),
                  ),
                  Container(
                    width: 230,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          'Black T-Shirt',
                          style: TextStyle(
                              color: Colors.black, fontWeight: FontWeight.bold),
                        ),
                        Text(
                          r'$50',
                          style: TextStyle(color: Colors.black),
                        )
                      ],
                    ),
                  ),
                  Container(
                    width: 230,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Row(
                          children: [
                            Text(
                              "Stock:",
                              style: TextStyle(color: Colors.black),
                            ),
                            Text(
                              "InStock",
                              style: TextStyle(
                                color: Colors.green,
                              ),
                            ),
                          ],
                        ),
                        IconButton(
                            splashRadius: 1,
                            onPressed: () {
                              setState(() {
                                if (_shoppingcartcolor == Colors.black) {
                                  _shoppingcartcolor = Colors.green;
                                } else {
                                  _shoppingcartcolor = Colors.black;
                                }
                              });
                            },
                            icon: Icon(
                              Icons.shopping_cart_outlined,
                              size: 18,
                              color: _shoppingcartcolor,
                            ))
                      ],
                    ),
                  )
                ],
              ),
            ),
            SizedBox(
              height: 5,
            ),
            Container(
              height: 200,
              width: 250,
              decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(5),
                  boxShadow: [
                    BoxShadow(
                        color: Colors.grey.withOpacity(0.5),
                        spreadRadius: 1,
                        blurRadius: 10,
                        offset: Offset(0, 15))
                  ]),
              child: Column(
                children: [
                  Row(
                    children: [
                      Container(
                        height: 30,
                        width: 250,
                        // color: Colors.grey,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            IconButton(
                              onPressed: () {
                                setState(() {
                                  if (_fav10 == Colors.black) {
                                    _fav10 = Colors.green;
                                  } else {
                                    _fav10 = Colors.black;
                                  }
                                });
                              },
                              icon: Icon(
                                Icons.favorite_outlined,
                                color: _fav10,
                                size: 18,
                              ),
                              splashRadius: 3,
                            ),
                          ],
                        ),
                      )
                    ],
                  ),
                  Container(
                    height: 95,
                    width: 80,
                    child: Image.network(
                        "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTU-nH8D5oVokWBsrpzXEssVKCa4R4ufyLHnsA8yx7ENqjLSlrxUO3f3qC5__ZRq_jGL-Y&usqp=CAU"),
                  ),
                  Container(
                    width: 230,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          'Men Suits',
                          style: TextStyle(
                              color: Colors.black, fontWeight: FontWeight.bold),
                        ),
                        Text(
                          r'$500',
                          style: TextStyle(color: Colors.black),
                        )
                      ],
                    ),
                  ),
                  Container(
                    width: 230,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Row(
                          children: [
                            Text(
                              "Stock:",
                              style: TextStyle(color: Colors.black),
                            ),
                            Text(
                              "OutOfStock",
                              style: TextStyle(
                                color: Colors.red,
                              ),
                            ),
                          ],
                        ),
                        IconButton(
                            splashRadius: 1,
                            onPressed: () {
                              setState(() {
                                if (_fav9 == Colors.black) {
                                  _fav9 = Colors.green;
                                } else {
                                  _fav9 = Colors.black;
                                }
                              });
                            },
                            icon: Icon(
                              Icons.shopping_cart_outlined,
                              size: 18,
                              color: _fav9,
                            ))
                      ],
                    ),
                  )
                ],
              ),
            ),
            SizedBox(
              height: 5,
            ),
            Container(
              height: 200,
              width: 250,
              decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(5),
                  boxShadow: [
                    BoxShadow(
                        color: Colors.grey.withOpacity(0.5),
                        spreadRadius: 1,
                        blurRadius: 10,
                        offset: Offset(0, 15))
                  ]),
              child: Column(
                children: [
                  Row(
                    children: [
                      Container(
                        height: 30,
                        width: 250,
                        // color: Colors.grey,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            IconButton(
                              onPressed: () {
                                setState(() {
                                  if (_fav6 == Colors.black) {
                                    _fav6 = Colors.green;
                                  } else {
                                    _fav6 = Colors.black;
                                  }
                                });
                              },
                              icon: Icon(
                                Icons.favorite_outlined,
                                color: _fav6,
                                size: 18,
                              ),
                              splashRadius: 3,
                            ),
                            Container(
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(5),
                                color: Colors.green,
                              ),
                              margin: EdgeInsets.only(right: 2, top: 3),
                              height: 20,
                              width: 38,
                              child: Center(
                                child: Text(
                                  "30% off",
                                  style: TextStyle(
                                      color: Colors.white, fontSize: 10),
                                ),
                              ),
                            )
                          ],
                        ),
                      )
                    ],
                  ),
                  Container(
                    height: 95,
                    width: 80,
                    child: Image.network(
                        "https://vpo.ca/images/product/large/283213_1_darkgrey.jpg"),
                  ),
                  Container(
                    width: 230,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          'Checkers Shirt',
                          style: TextStyle(
                              color: Colors.black, fontWeight: FontWeight.bold),
                        ),
                        Text(
                          r'$200',
                          style: TextStyle(color: Colors.black),
                        )
                      ],
                    ),
                  ),
                  Container(
                    width: 230,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Row(
                          children: [
                            Text(
                              "Stock:",
                              style: TextStyle(color: Colors.black),
                            ),
                            Text(
                              "InStock",
                              style: TextStyle(
                                color: Colors.green,
                              ),
                            ),
                          ],
                        ),
                        IconButton(
                            splashRadius: 1,
                            onPressed: () {
                              setState(() {
                                if (_fav5 == Colors.black) {
                                  _fav5 = Colors.green;
                                } else {
                                  _fav5 = Colors.black;
                                }
                              });
                            },
                            icon: Icon(
                              Icons.shopping_cart_outlined,
                              size: 18,
                              color: _fav5,
                            ))
                      ],
                    ),
                  )
                ],
              ),
            ),
            SizedBox(
              height: 5,
            ),
            Container(
              height: 200,
              width: 250,
              decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(5),
                  boxShadow: [
                    BoxShadow(
                        color: Colors.grey.withOpacity(0.5),
                        spreadRadius: 1,
                        blurRadius: 10,
                        offset: Offset(0, 15))
                  ]),
              child: Column(
                children: [
                  Row(
                    children: [
                      Container(
                        height: 30,
                        width: 250,
                        // color: Colors.grey,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            IconButton(
                              onPressed: () {
                                setState(() {
                                  if (_fav4 == Colors.black) {
                                    _fav4 = Colors.green;
                                  } else {
                                    _fav4 = Colors.black;
                                  }
                                });
                              },
                              icon: Icon(
                                Icons.favorite_outlined,
                                color: _fav4,
                                size: 18,
                              ),
                              splashRadius: 3,
                            ),
                            Container(
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(5),
                                color: Colors.green,
                              ),
                              margin: EdgeInsets.only(right: 2, top: 3),
                              height: 20,
                              width: 38,
                              child: Center(
                                child: Text(
                                  "25% off",
                                  style: TextStyle(
                                      color: Colors.white, fontSize: 10),
                                ),
                              ),
                            )
                          ],
                        ),
                      )
                    ],
                  ),
                  Container(
                    height: 95,
                    width: 80,
                    child: Image.network(
                        "https://5.imimg.com/data5/NM/SX/EJ/SELLER-94403929/adidas-mens-sports-shoes-500x500.jpg"),
                  ),
                  Container(
                    width: 230,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          'Joggers',
                          style: TextStyle(
                              color: Colors.black, fontWeight: FontWeight.bold),
                        ),
                        Text(
                          r'$150',
                          style: TextStyle(color: Colors.black),
                        )
                      ],
                    ),
                  ),
                  Container(
                    width: 230,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Row(
                          children: [
                            Text(
                              "Stock:",
                              style: TextStyle(color: Colors.black),
                            ),
                            Text(
                              "InStock",
                              style: TextStyle(
                                color: Colors.green,
                              ),
                            ),
                          ],
                        ),
                        IconButton(
                            splashRadius: 1,
                            onPressed: () {
                              setState(() {
                                if (_fav3 == Colors.black) {
                                  _fav3 = Colors.green;
                                } else {
                                  _fav3 = Colors.black;
                                }
                              });
                            },
                            icon: Icon(
                              Icons.shopping_cart_outlined,
                              size: 18,
                              color: _fav3,
                            ))
                      ],
                    ),
                  )
                ],
              ),
            ),
            SizedBox(
              height: 5,
            ),
            Container(
              height: 200,
              width: 250,
              decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(5),
                  boxShadow: [
                    BoxShadow(
                        color: Colors.grey.withOpacity(0.5),
                        spreadRadius: 1,
                        blurRadius: 10,
                        offset: Offset(0, 15))
                  ]),
              child: Column(
                children: [
                  Row(
                    children: [
                      Container(
                        height: 30,
                        width: 250,
                        // color: Colors.grey,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            IconButton(
                              onPressed: () {
                                setState(() {
                                  if (_fav2 == Colors.black) {
                                    _fav2 = Colors.green;
                                  } else {
                                    _fav2 = Colors.black;
                                  }
                                });
                              },
                              icon: Icon(
                                Icons.favorite_outlined,
                                color: _fav2,
                                size: 18,
                              ),
                              splashRadius: 3,
                            ),
                          ],
                        ),
                      )
                    ],
                  ),
                  Container(
                    height: 95,
                    width: 80,
                    child: Image.network(
                        "https://media.istockphoto.com/photos/elegant-black-leather-shoes-picture-id172417586?k=20&m=172417586&s=612x612&w=0&h=DDjvQhRgSYcH2F5rVt8iohGvkqCIteYuTCq3wpJuUi4="),
                  ),
                  Container(
                    width: 230,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          'Shoes',
                          style: TextStyle(
                              color: Colors.black, fontWeight: FontWeight.bold),
                        ),
                        Text(
                          r'$200',
                          style: TextStyle(color: Colors.black),
                        )
                      ],
                    ),
                  ),
                  Container(
                    width: 230,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Row(
                          children: [
                            Text(
                              "Stock:",
                              style: TextStyle(color: Colors.black),
                            ),
                            Text(
                              "OutOfStock",
                              style: TextStyle(
                                color: Colors.red,
                              ),
                            ),
                          ],
                        ),
                        IconButton(
                            splashRadius: 1,
                            onPressed: () {
                              setState(() {
                                if (_fav1 == Colors.black) {
                                  _fav1 = Colors.green;
                                } else {
                                  _fav1 = Colors.black;
                                }
                              });
                            },
                            icon: Icon(
                              Icons.shopping_cart_outlined,
                              size: 18,
                              color: _fav1,
                            ))
                      ],
                    ),
                  )
                ],
              ),
            ),
            SizedBox(
              height: 5,
            ),
            Container(
              height: 200,
              width: 250,
              decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(5),
                  boxShadow: [
                    BoxShadow(
                        color: Colors.grey.withOpacity(0.5),
                        spreadRadius: 1,
                        blurRadius: 10,
                        offset: Offset(0, 15))
                  ]),
              child: Column(
                children: [
                  Row(
                    children: [
                      Container(
                        height: 30,
                        width: 250,
                        // color: Colors.grey,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            IconButton(
                              onPressed: () {
                                setState(() {
                                  if (_fav == Colors.black) {
                                    _fav = Colors.green;
                                  } else {
                                    _fav = Colors.black;
                                  }
                                });
                              },
                              icon: Icon(
                                Icons.favorite_outlined,
                                color: _fav,
                                size: 18,
                              ),
                              splashRadius: 3,
                            ),
                            Container(
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(5),
                                color: Colors.green,
                              ),
                              margin: EdgeInsets.only(right: 2, top: 3),
                              height: 20,
                              width: 38,
                              child: Center(
                                child: Text(
                                  "15% off",
                                  style: TextStyle(
                                      color: Colors.white, fontSize: 10),
                                ),
                              ),
                            )
                          ],
                        ),
                      )
                    ],
                  ),
                  Container(
                    height: 95,
                    width: 80,
                    child: Image.network(
                        "https://cdn.vmartretail.com/images1/thumbnails/97049/640/1/143687804-97049373-1621482720.jpg"),
                  ),
                  Container(
                    width: 230,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          'Blue Jeans',
                          style: TextStyle(
                              color: Colors.black, fontWeight: FontWeight.bold),
                        ),
                        Text(
                          r'$100',
                          style: TextStyle(color: Colors.black),
                        )
                      ],
                    ),
                  ),
                  Container(
                    width: 230,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Row(
                          children: [
                            Text(
                              "Stock:",
                              style: TextStyle(color: Colors.black),
                            ),
                            Text(
                              "InStock",
                              style: TextStyle(
                                color: Colors.green,
                              ),
                            ),
                          ],
                        ),
                        IconButton(
                            splashRadius: 1,
                            onPressed: () {
                              setState(() {
                                if (_shoppingcartcolors == Colors.black) {
                                  _shoppingcartcolors = Colors.green;
                                } else {
                                  _shoppingcartcolors = Colors.black;
                                }
                              });
                            },
                            icon: Icon(
                              Icons.shopping_cart_outlined,
                              size: 18,
                              color: _shoppingcartcolors,
                            ))
                      ],
                    ),
                  )
                ],
              ),
            )
          ],
        ),
      ]),
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        currentIndex: _currentIndex,
        backgroundColor: Colors.white,
        selectedItemColor: Colors.green,
        unselectedItemColor: Colors.black,
        selectedFontSize: 14,
        unselectedFontSize: 10,
        onTap: (value) {
          //  Respond to item press.
          setState(() => _currentIndex = value);
        },
        items: [
          BottomNavigationBarItem(
              title: Text('Home'),
              icon: IconButton(
                  onPressed: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => second()));
                  },
                  icon: Icon(Icons.home))),
          BottomNavigationBarItem(
            title: Text('Search'),
            icon: IconButton(
                onPressed: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => search()));
                },
                icon: Icon(Icons.search)),
          ),
          BottomNavigationBarItem(
              title: Text('Profile'),
              icon: IconButton(
                  onPressed: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => profile()));
                  },
                  icon: Icon(Icons.person))),
        ],
      ),
    );
  }
}
