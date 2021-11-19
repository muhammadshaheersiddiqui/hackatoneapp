import 'dart:html';

import 'package:flutter/material.dart';
import 'package:hackatoneapp/second.dart';

class home extends StatefulWidget {
  const home({Key? key}) : super(key: key);

  @override
  _homeState createState() => _homeState();
}

class _homeState extends State<home> {
  TextEditingController userNameController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: Text(
          'Login',
          style: TextStyle(color: Colors.green, fontWeight: FontWeight.bold),
        ),
      ),
      body: ListView(
        children: [
          Center(
            child: Container(
                margin: EdgeInsets.only(top: 100),
                height: 150,
                width: 150,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Image(
                        image: NetworkImage(
                            'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRbs-FxqKI5BHf-6HpTRHNtKdXTxpBB6TxB6UHHCFi_LhMLSANgyOgpv9AMb35U7icVqnI&usqp=CAU'))
                  ],
                )),
          ),
          SizedBox(
            height: 100,
          ),
          Container(
              width: 180,
              height: 40,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    width: 180,
                    height: 40,
                    child: TextField(
                      style: TextStyle(fontSize: 12, height: 1.5),
                      controller: userNameController,
                      decoration: InputDecoration(
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(40.0),
                          ),
                          filled: true,
                          hintStyle: TextStyle(color: Colors.black),
                          hintText: "Username",
                          contentPadding: EdgeInsets.symmetric(
                              vertical: 10, horizontal: 15),
                          fillColor: const Color(0xffc3face)),
                    ),
                  )
                ],
              )),
          SizedBox(
            height: 30,
          ),
          Container(
              width: 180,
              height: 40,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    width: 180,
                    height: 40,
                    child: TextField(
                      obscureText: true,
                      controller: passwordController,
                      style: TextStyle(fontSize: 12, height: 1.5),
                      decoration: InputDecoration(
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(40.0),
                          ),
                          filled: true,
                          hintStyle: TextStyle(color: Colors.black),
                          hintText: "Password",
                          contentPadding: EdgeInsets.symmetric(
                              vertical: 10, horizontal: 15),
                          fillColor: const Color(0xffc3face)),
                    ),
                  )
                ],
              )),
          SizedBox(
            height: 20,
          ),
          Container(
              height: 40,
              width: 100,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  ElevatedButton(
                      style: ElevatedButton.styleFrom(
                          side: BorderSide(
                            width: 1.5,
                            color: Colors.grey,
                          ),
                          shape: StadiumBorder(),
                          primary: Color(0xffc3face),
                          onPrimary: Colors.black),
                      onPressed: () {
                        if (userNameController.text.trim() == "" ||
                            passwordController.text.trim() == "") {
                          final snackBar = SnackBar(
                              content: Text('All fields are required'));

                          ScaffoldMessenger.of(context).showSnackBar(snackBar);
                        } else {
                          if (userNameController.text.trim() ==
                                  'shaheer123456' &&
                              passwordController.text.trim() == "123456") {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => second()));
                          } else {
                            final snackBar = SnackBar(
                                content: Text(
                                    'User name or password is incorrect!'));

                            ScaffoldMessenger.of(context)
                                .showSnackBar(snackBar);
                          }
                        }
                      },
                      child: Row(
                        children: [
                          Icon(
                            Icons.login,
                            size: 17,
                          ),
                          SizedBox(
                            width: 10,
                          ),
                          Text('Login'),
                        ],
                      ))
                ],
              )),
          SizedBox(
            height: 20,
          ),
          Container(
              height: 30,
              width: 240,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  ElevatedButton(
                      style: ElevatedButton.styleFrom(
                          primary: Colors.white,
                          onPrimary: Colors.black,
                          shadowColor: Colors.white),
                      onPressed: () {},
                      child: Text('Dont have an account? Signin'))
                ],
              ))
        ],
      ),
    );
  }
}
