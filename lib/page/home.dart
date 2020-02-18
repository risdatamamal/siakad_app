import 'package:dsc_app/page/screen/file/download_file.dart';
import 'package:dsc_app/page/screen/file/home_file.dart';
import 'package:dsc_app/page/screen/pengumuman.dart';
import 'package:dsc_app/page/screen/setting.dart';
import 'package:dsc_app/page/student/inbox.dart';
import 'package:dsc_app/page/student/login.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).canvasColor,
      drawer: Drawer(
      ),
      body: CustomScrollView(
        slivers: <Widget>[
          SliverAppBar(
            automaticallyImplyLeading: false,
            pinned: true,
            expandedHeight: 360.0,
            backgroundColor: Theme.of(context).canvasColor,
            title: Text(
              "SIAKAD",
              style: TextStyle(
                  fontSize: 30.0,
                  color: Color(0xff333333),
                  fontWeight: FontWeight.bold),
            ),
            actions: <Widget>[
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 8.0),
                child: CircleAvatar(
                  child: InkWell(
                    onTap: () {
                      return showDialog(
                          context: context,
                          builder: (context) {
                            return AlertDialog(
                              shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
                              contentPadding: const EdgeInsets.all(0),
                              content: Container(
                                width: 100,
                                height: MediaQuery.of(context).size.height/2.5,
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                  children: <Widget>[
                                    Expanded(
                                      flex: 2,
                                      child: Stack(
                                        children: <Widget>[
                                          Container(
                                            margin: const EdgeInsets.only(bottom: 50),
                                            decoration: BoxDecoration(
                                                borderRadius: BorderRadius.only(topLeft: Radius.circular(20), topRight: Radius.circular(20)),
                                                color: Colors.red
                                            ),
                                          ),
                                          Align(
                                            alignment: Alignment.bottomCenter,
                                            child: CircleAvatar(backgroundColor: Colors.blue, radius: 50,),
                                          )
                                        ],
                                      ),
                                    ),
                                    Expanded(
                                      child: Padding(
                                        padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 20),
                                        child: Column(
                                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                          children: <Widget>[
                                            Text("202929292"),
                                            Row(
                                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                              children: <Widget>[
                                                InkWell(
                                                  highlightColor: Colors.transparent,
                                                  borderRadius: BorderRadius.circular(10),
                                                  onTap: () => Navigator.push(context, MaterialPageRoute(builder: (context) => SettingPage())),
                                                  child: Row(
                                                    children: <Widget>[
                                                      Icon(Icons.settings,color: Colors.blueAccent,),
                                                      SizedBox(width: 5,),
                                                      Text("Setting")
                                                    ],
                                                  ),
                                                ),
                                                InkWell(
                                                  onTap: () => Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => Login())),
                                                  highlightColor: Colors.transparent,
                                                  borderRadius: BorderRadius.circular(10),
                                                  child: Row(
                                                    children: <Widget>[
                                                      Text("Log Out"),
                                                      SizedBox(width: 5,),
                                                      Icon(Icons.cancel,color: Color(0xffFF5F5F),),
                                                    ],
                                                  ),
                                                ),
                                              ],
                                            ),
                                          ],
                                        ),
                                      ),
                                    )
                                  ],
                                ),
                              ),
                            );
                          }
                      );
                    },
                  ),
                  backgroundColor: Colors.amber,
                ),
              )
            ],
            centerTitle: false,
            flexibleSpace: FlexibleSpaceBar(
              background: Container(
                margin: const EdgeInsets.only(bottom: 20),
                padding:
                const EdgeInsets.symmetric(horizontal: 25.0),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    Expanded(child: Container()),
                    Expanded(
                      flex: 2,
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: <Widget>[
                          Expanded(
                            flex: 3,
                            child: Container(
                              margin: const EdgeInsets.only(right: 20),
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(10),
                                  color: Theme.of(context).canvasColor,
                                  boxShadow: [
                                    BoxShadow(
                                        offset: Offset(3, 6),
                                        blurRadius: 10,
                                        color: Colors.black.withOpacity(0.2)
                                    ),
                                    BoxShadow(
                                        offset: Offset(-5, -5),
                                        blurRadius: 3,
                                        color: Colors.white
                                    ),
                                  ]
                              ),
                              padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 20),
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.start,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: <Widget>[
                                  Row(
                                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                    crossAxisAlignment: CrossAxisAlignment.center,
                                    children: <Widget>[
                                      Text("Jadwal", style: TextStyle(
                                        fontSize: 20,
                                        fontWeight: FontWeight.bold,
                                      ),),
                                      Text("Senin", style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                        color: Color(0xff4664C7),
                                      ),)
                                    ],
                                  ),
                                  SizedBox(height: 30,),
                                  Container(
                                    margin: const EdgeInsets.symmetric(vertical: 5),
                                    child: Row(
                                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                      crossAxisAlignment: CrossAxisAlignment.center,
                                      children: <Widget>[
                                        Column(
                                          mainAxisAlignment: MainAxisAlignment.center,
                                          crossAxisAlignment: CrossAxisAlignment.start,
                                          children: <Widget>[
                                            Text("Kalkulus 1", style: TextStyle(fontWeight: FontWeight.bold),),
                                            Text("R309", style: TextStyle(
                                                fontWeight: FontWeight.bold,
                                                color: Theme.of(context).highlightColor.withOpacity(0.3)
                                            ),)
                                          ],
                                        ),
                                        Column(
                                          mainAxisAlignment: MainAxisAlignment.center,
                                          crossAxisAlignment: CrossAxisAlignment.start,
                                          children: <Widget>[
                                            Text("07 : 30 AM", style: TextStyle(fontWeight: FontWeight.bold),),
                                            Text("10 : 30 AM", style: TextStyle(
                                                fontWeight: FontWeight.bold,
                                                color: Theme.of(context).highlightColor.withOpacity(0.3)
                                            ),)
                                          ],
                                        ),
                                      ],
                                    ),
                                  ),
                                  Container(
                                    margin: const EdgeInsets.symmetric(vertical: 5),
                                    child: Row(
                                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                      crossAxisAlignment: CrossAxisAlignment.center,
                                      children: <Widget>[
                                        Column(
                                          mainAxisAlignment: MainAxisAlignment.center,
                                          crossAxisAlignment: CrossAxisAlignment.start,
                                          children: <Widget>[
                                            Text("Kalkulus 1", style: TextStyle(fontWeight: FontWeight.bold),),
                                            Text("R309", style: TextStyle(
                                                fontWeight: FontWeight.bold,
                                                color: Theme.of(context).highlightColor.withOpacity(0.3)
                                            ),)
                                          ],
                                        ),
                                        Column(
                                          mainAxisAlignment: MainAxisAlignment.center,
                                          crossAxisAlignment: CrossAxisAlignment.start,
                                          children: <Widget>[
                                            Text("07 : 30 AM", style: TextStyle(fontWeight: FontWeight.bold),),
                                            Text("10 : 30 AM", style: TextStyle(
                                                fontWeight: FontWeight.bold,
                                                color: Theme.of(context).highlightColor.withOpacity(0.3)
                                            ),)
                                          ],
                                        ),
                                      ],
                                    ),
                                  ),
                                  Container(
                                    margin: const EdgeInsets.symmetric(vertical: 5),
                                    child: Row(
                                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                      crossAxisAlignment: CrossAxisAlignment.center,
                                      children: <Widget>[
                                        Column(
                                          mainAxisAlignment: MainAxisAlignment.center,
                                          crossAxisAlignment: CrossAxisAlignment.start,
                                          children: <Widget>[
                                            Text("Kalkulus 1", style: TextStyle(fontWeight: FontWeight.bold),),
                                            Text("R309", style: TextStyle(
                                                fontWeight: FontWeight.bold,
                                                color: Theme.of(context).highlightColor.withOpacity(0.3)
                                            ),)
                                          ],
                                        ),
                                        Column(
                                          mainAxisAlignment: MainAxisAlignment.center,
                                          crossAxisAlignment: CrossAxisAlignment.start,
                                          children: <Widget>[
                                            Text("07 : 30 AM", style: TextStyle(fontWeight: FontWeight.bold),),
                                            Text("10 : 30 AM", style: TextStyle(
                                                fontWeight: FontWeight.bold,
                                                color: Theme.of(context).highlightColor.withOpacity(0.3)
                                            ),)
                                          ],
                                        ),
                                      ],
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                          Expanded(
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.end,
                                children: <Widget>[
                                  Expanded(
                                    child: Text('Jun', style: TextStyle(
                                        fontSize: 20,
                                        color: Theme.of(context).highlightColor
                                    ),),
                                  ),
                                  Expanded(
                                    flex: 9,
                                    child: Column(
                                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                      children: <Widget>[
                                        Text(
                                          '28',
                                          style: TextStyle(
                                              fontSize: 50,
                                              color: Theme.of(context).highlightColor.withOpacity(0.2)
                                          ),
                                        ),
                                        Text(
                                          '29',
                                          style: TextStyle(
                                              fontSize: 50,
                                              color: Theme.of(context).highlightColor
                                          ),
                                        ),
                                        Text(
                                          '30',
                                          style: TextStyle(
                                              fontSize: 50,
                                              color: Theme.of(context).highlightColor.withOpacity(0.2)
                                          ),
                                        ),
                                      ],
                                    ),
                                  )
                                ],
                              )
                          )
                        ],
                      ),
                    )
                  ],
                ),
              ),
            ),
          ),
          SliverFixedExtentList(
            itemExtent: 300,
            delegate: SliverChildListDelegate([
              Column(
                mainAxisAlignment: MainAxisAlignment.start,
                children: <Widget>[
                  _pengumuman(),
                  _iconButton(),
                ],
              ),
              _recentDownloads()
            ]),
          )
        ],
      ),
    );
  }
  Widget _pengumuman() {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      children: <Widget>[
        Container(
          height: 110,
          margin: const EdgeInsets.symmetric(vertical: 30, horizontal: 20),
          child: Stack(
            children: <Widget>[
              Container(
                padding: const EdgeInsets.symmetric(vertical: 15, horizontal: 30),
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    color: Colors.white
                ),
                child: InkWell(
                  onTap: () {},
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: <Widget>[
                          Text("Pengumuman", style: TextStyle(
                              color: Theme.of(context).highlightColor,
                              fontSize: 16,
                              fontWeight: FontWeight.bold
                          ),),
                          InkWell(
                            onTap: () => Navigator.push(context, MaterialPageRoute(builder: (context) => PengumumanPage())),
                            child: Text("See More", style: TextStyle(
                                fontSize: 12,
                                color: Theme.of(context).highlightColor.withOpacity(0.5)
                            ),),
                          )
                        ],
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Text("Pengisian KRS dilaksanakan secara online melalui aplikasi SIAKAD Esa Unggul", style: TextStyle(
                        fontSize: 14,
                        color: Color(0xff707070),
                      ),
                        maxLines: 2,
                        overflow: TextOverflow.ellipsis,
                      ),
                      Align(
                        alignment: Alignment.bottomRight,
                        child: Text("Monday 05:15 PM", style: TextStyle(
                            color: Theme.of(context).highlightColor,
                            fontWeight: FontWeight.bold,
                            fontSize: 10
                        ),
                        ),
                      )
                    ],
                  ),
                ),
              ),
              Container(
                width: 20,
                decoration: BoxDecoration(
                    color: Color(0xffFF5F5F),
                    borderRadius: BorderRadius.only(topLeft: Radius.circular(20), bottomLeft: Radius.circular(20))
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }

  Widget _iconButton() {
    return Container(
      height: 70,
      margin: const EdgeInsets.symmetric(vertical: 30, horizontal: 33),
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20),
          color: Theme.of(context).canvasColor,
          boxShadow: [
            BoxShadow(
              offset: Offset(5, 5),
              blurRadius: 10,
              color: Colors.black.withOpacity(0.2),
            ),
            BoxShadow(
                offset: Offset(-5, -5),
                blurRadius: 16,
                color: Colors.white
            )
          ]
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: <Widget>[
          Expanded(
            child: InkWell(
              onTap: () => Navigator.push(context, MaterialPageRoute(builder: (context) => InboxPage())),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: <Widget>[
                  Icon(Icons.email, color: Color(0xffFF5F5F), size: 35,),
                  Text("Inbox", style: TextStyle(color: Theme.of(context).highlightColor),)
                ],
              ),
            ),
          ),
          Expanded(
            child: InkWell(
              onTap: () => Navigator.push(context, MaterialPageRoute(builder: (context) => FileStudent())),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: <Widget>[
                  Icon(Icons.folder, color: Color(0xff4664C7), size: 35,),
                  Text("File", style: TextStyle(color: Theme.of(context).highlightColor),)
                ],
              ),
            ),
          ),
          Expanded(
            child: InkWell(
              onTap: () {},
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: <Widget>[
                  Icon(Icons.pie_chart, color: Color(0xffFED86F), size: 35,),
                  Text("Dashboard", style: TextStyle(color: Theme.of(context).highlightColor),)
                ],
              ),
            ),
          ),
        ],
      ),
    );

  }
  Widget _recentDownloads() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        Container(
          margin: const EdgeInsets.symmetric(horizontal: 15),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              Text("Recent\nDownloads", style: TextStyle(
                  fontSize: 18,
                  color: Theme.of(context).highlightColor,
                  fontWeight: FontWeight.bold
              ),),
              InkWell(
                onTap: () => Navigator.push(context, MaterialPageRoute(builder: (context) => DownloadFile())),
                highlightColor: Colors.transparent,
                child: Text("See More", style: TextStyle(
                    fontSize: 14.0,
                    color: Theme.of(context).highlightColor.withOpacity(0.4)
                ),),
              )
            ],
          ),
        ),
        Expanded(
          child: Container(
            margin: const EdgeInsets.symmetric(vertical: 30),
            child: ListView.builder(
              itemCount: 6,
              scrollDirection: Axis.horizontal,
              itemBuilder: (context, index) {
                return Container(
                  width: 150,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Container(
                        margin: const EdgeInsets.symmetric(vertical: 10, horizontal: 25),
                        width: 100,
                        height: 100,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            color: Colors.white,
                            boxShadow: [
                              BoxShadow(
                                  offset: Offset(5, 5),
                                  blurRadius: 3,
                                  color: Colors.black.withOpacity(0.2)
                              )
                            ]
                        ),
                        child: Center(
                          child: Text(".pdf", style: TextStyle(
                              color: Color(0xffFF5F5F),
                              fontSize: 20
                          ),),
                        ),
                      ),
                      Container(
                        margin: const EdgeInsets.only(left: 10.0),
                        child: Text("Tugas_1.pdf", style: TextStyle(
                            fontSize: 14.0
                        ),),
                      )
                    ],
                  ),
                );
              },
            ),
          ),
        ),
      ],
    );
  }
}
