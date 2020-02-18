import 'package:dsc_app/page/home.dart';
import 'package:flutter/material.dart';

class Login extends StatefulWidget {
  @override
  _LoginState createState() => _LoginState();
}

class _LoginState extends State<Login> {
  final _key = GlobalKey<FormState>();


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).canvasColor,
      body: Stack(
        children: <Widget>[
          Form(
            key: _key,
            child: Container(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Text("Login", style: TextStyle(
                      color: Theme.of(context).highlightColor,
                      fontSize: 30.0,
                      fontFamily: 'PTMono'
                  ),),
                  SizedBox(height: 20,),
                  Container(
                    margin: const EdgeInsets.symmetric(vertical: 20),
                    padding: const EdgeInsets.symmetric(horizontal: 20),
                    child: TextField(
                      keyboardType: TextInputType.emailAddress,
                      cursorColor: Theme.of(context).accentColor,
                      decoration: InputDecoration(
                          labelText: "Email",
                          border: OutlineInputBorder(
                            borderSide: BorderSide(color: Theme.of(context).accentColor),
                            borderRadius: BorderRadius.circular(10),
                          )
                      ),
                    ),
                  ),
                  Container(
                    margin: const EdgeInsets.symmetric(vertical: 20),
                    padding: const EdgeInsets.symmetric(horizontal: 20),
                    child: TextField(
                      cursorColor: Theme.of(context).accentColor,
                      obscureText: true,
                      decoration: InputDecoration(
                          labelText: "Password",
                          border: OutlineInputBorder(
                            borderSide: BorderSide(color: Theme.of(context).accentColor),
                            borderRadius: BorderRadius.circular(10),
                          )
                      ),
                    ),
                  ),
                  SizedBox(height: 40,),
                  Align(
                    alignment: Alignment.bottomRight,
                    child: IconButton(
                      onPressed: () => Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => HomePage())),
                      iconSize: 30,
                      icon: Icon(Icons.arrow_forward,),
                      highlightColor: Theme.of(context).highlightColor.withOpacity(0.2),
                    ),
                  )
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
