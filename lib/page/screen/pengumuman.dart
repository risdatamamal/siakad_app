import 'package:flutter/material.dart';

class PengumumanPage extends StatefulWidget {
  @override
  _PengumumanPageState createState() => _PengumumanPageState();
}

class _PengumumanPageState extends State<PengumumanPage> with TickerProviderStateMixin{
  List<Tab> _tabList = List();
  TabController _tabController;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _tabList.add(Tab(
      text: "Universitas",
    ));
    _tabList.add(Tab(
      text: "Events",
    ));
    _tabList.add(Tab(
      text: "Fakultas",
    ));

    _tabController = new TabController(length: _tabList.length, vsync: this);

  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Pengumuman",
          style: TextStyle(
            fontSize: 20,
          ),
        ),
        centerTitle: false,
        backgroundColor: Theme.of(context).canvasColor,
        bottom: TabBar(
          tabs: _tabList,
          labelColor: Theme.of(context).highlightColor,
          labelStyle: TextStyle(fontSize: 15.0),
          controller: _tabController,
          indicatorSize: TabBarIndicatorSize.tab,
          indicatorColor: Theme.of(context).accentColor,
        ),
      ),
      body: TabBarView(
        controller: _tabController,
        children: <Widget>[
          ListView.builder(
            itemCount: 10,
            itemBuilder: (context, index) {
              return Container(
                height: 120,
                margin: const EdgeInsets.symmetric(vertical: 10, horizontal: 20),
                child: Stack(
                  children: <Widget>[
                    Container(
                      margin: const EdgeInsets.symmetric(horizontal: 20),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        color: Colors.white,
                          boxShadow: [
                            BoxShadow(
                                offset: Offset(0, 10),
                                blurRadius: 20,
                                color: Colors.black.withOpacity(0.08))
                          ]
                      ),
                    ),
                    Container(
                      margin: const EdgeInsets.only(bottom: 15),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        color: Colors.white,
                        boxShadow: [
                          BoxShadow(
                              offset: Offset(20, 7),
                              blurRadius: 40,
                              color: Colors.black.withOpacity(0.08)
                          )
                        ]
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          Expanded(
                            flex: 1,
                            child: Container(
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.only(topLeft: Radius.circular(20), bottomLeft: Radius.circular(20)),
                                color: Colors.red
                              ),
                            ),
                          ),
                          Expanded(
                            flex: 3,
                            child: Container(
                              padding: const EdgeInsets.all(10),
                              margin: const EdgeInsets.symmetric(horizontal: 10),
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: <Widget>[
                                  Column(
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: <Widget>[
                                      Text("Judul"),
                                      Text("Deskripsi")
                                    ],
                                  ),
                                  Align(
                                    alignment: Alignment.bottomRight,
                                    child: Text("Tanggal"),
                                  )
                                ],
                              ),
                            ),
                          )
                        ],
                      ),
                    )
                  ],
                ),
              );
            },
          ),
          ListView.builder(
            itemCount: 10,
            itemBuilder: (context, index) {
              return Container(
                height: 120,
                margin: const EdgeInsets.symmetric(vertical: 10, horizontal: 20),
                child: Stack(
                  children: <Widget>[
                    Container(
                      margin: const EdgeInsets.symmetric(horizontal: 10),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        color: Colors.white,
                          boxShadow: [
                            BoxShadow(
                                offset: Offset(0, 10),
                                blurRadius: 20,
                                color: Colors.black.withOpacity(0.08))
                          ]
                      ),
                    ),
                    Container(
                      margin: const EdgeInsets.only(bottom: 20),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        color: Colors.white,
                        boxShadow: [
                          BoxShadow(
                              offset: Offset(20, 7),
                              blurRadius: 40,
                              color: Colors.black.withOpacity(0.08)
                          )
                        ]
                      ),
                    )
                  ],
                ),
              );
            },
          ),
          ListView.builder(
            itemCount: 10,
            itemBuilder: (context, index) {
              return Container(
                height: 120,
                margin: const EdgeInsets.symmetric(vertical: 10, horizontal: 20),
                child: Stack(
                  children: <Widget>[
                    Container(
                      margin: const EdgeInsets.symmetric(horizontal: 10),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        color: Colors.white,
                          boxShadow: [
                            BoxShadow(
                                offset: Offset(0, 10),
                                blurRadius: 20,
                                color: Colors.black.withOpacity(0.08))
                          ]
                      ),
                    ),
                    Container(
                      margin: const EdgeInsets.only(bottom: 20),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        color: Colors.white,
                        boxShadow: [
                          BoxShadow(
                              offset: Offset(20, 7),
                              blurRadius: 40,
                              color: Colors.black.withOpacity(0.08)
                          )
                        ]
                      ),
                    )
                  ],
                ),
              );
            },
          ),
        ],
      ),
    );
  }
}
