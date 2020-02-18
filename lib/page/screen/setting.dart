import 'package:flutter/material.dart';

class SettingPage extends StatefulWidget {
  @override
  _SettingPageState createState() => _SettingPageState();
}

class _SettingPageState extends State<SettingPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: false,
        title: Text("Setting"),
        backgroundColor: Theme.of(context).canvasColor,
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          Stack(
            children: <Widget>[
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 5, horizontal: 10),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: <Widget>[
                    Container(
                      height: 100,
                      margin: const EdgeInsets.symmetric(vertical: 5),
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: <Widget>[
                          CircleAvatar(
                            radius: 50,
                            backgroundColor: Colors.blueAccent,
                          ),
                          SizedBox(width: 10,),
                          Column(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: <Widget>[
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: <Widget>[
                                  Text("Pendesain", style: TextStyle(
                                    fontSize: 20,
                                  ),),
                                  SizedBox(height: 5,),
                                  Text("2029202020", style: TextStyle(
                                      fontFamily: 'PTmono',
                                      fontSize: 14
                                  ),),
                                ],
                              ),
                              Text("Teknik Informatika", style: TextStyle(
                                  fontFamily: 'PT_Sans',
                                  fontSize: 16
                              ),),
                            ],
                          )
                        ],
                      ),
                    ),
                    SizedBox(height: 20,),
                    Container(
                      height: 70,
                      color: Colors.redAccent,
                      margin: const EdgeInsets.symmetric(vertical: 5),
                    ),
                  ],
                ),
              ),
            ],
          ),
          Column(
            children: <Widget>[
              Text("SIAKAD"),
              Text("Universitas Esa Unggul"),
              SizedBox(height: 20,)
            ],
          ),
        ],
      ),
    );
  }
}
