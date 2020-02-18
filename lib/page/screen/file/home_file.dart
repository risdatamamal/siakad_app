import 'package:flutter/material.dart';

class FileStudent extends StatefulWidget {
  @override
  _FileStudent createState() => _FileStudent();
}

class _FileStudent extends State<FileStudent> {
  int tap;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: <Widget>[
          SliverAppBar(
            pinned: true,
            expandedHeight: 150.0,
            backgroundColor: Color(0xffF9FAF5),
            title: Text(
              "File",
              style: TextStyle(
                  fontSize: 20.0,
                  color: Color(0xff333333),
                  ),
            ),
            actions: <Widget>[
              Container(
                width: 35,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(30),
                    color: Theme.of(context).canvasColor,
                    boxShadow: [
                      BoxShadow(
                          offset: Offset(3, 3),
                          color: Colors.black.withOpacity(0.2),
                          blurRadius: 6
                      ),
                      BoxShadow(
                          offset: Offset(-1, -1),
                          color: Colors.white,
                          blurRadius: 3
                      ),
                    ]
                ),
                margin: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                child: InkWell(
                  borderRadius: BorderRadius.circular(40),
                  onTap: () => print("Tap"),
                  child: Center(
                    child: Icon(
                      Icons.add,
                      size: 25,
                      color: Color(0xff333333),
                    ),
                  ),
                ),
              )
            ],
            centerTitle: false,
            flexibleSpace: FlexibleSpaceBar(
              background: Padding(
                padding:
                const EdgeInsets.symmetric(horizontal: 20.0, vertical: 5),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    Container(),
                    Container(
                      margin: const EdgeInsets.only(bottom: 20),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: <Widget>[
                          Expanded(
                            flex: 9,
                            child: Container(
                              padding: const EdgeInsets.symmetric(
                                  horizontal: 20, vertical: 1),
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(15.0),
                                  color: Colors.white),
                              child: TextFormField(
                                decoration: InputDecoration(
                                    border: InputBorder.none,
                                    hintText: "Search",
                                    icon: Icon(
                                      Icons.search,
                                      color: Color(0xff333333),
                                    )),
                              ),
                            ),
                          ),
                          SizedBox(width: 5,),
                          Expanded(
                            flex: 1,
                            child: Container(
                              height: 35,
                              width: 35,
                              child: Center(
                                child: InkWell(borderRadius: BorderRadius.circular(20),onTap: () {},highlightColor: Colors.transparent,child: Icon(Icons.filter_list)),
                              ),
                            ),
                          )
                        ],
                      ),
                    )
                  ],
                ),
              ),
            ),
          ),
          SliverList(
            delegate: SliverChildBuilderDelegate(
                  (context,index) {
                return InkWell(
                  onTap: () {
                    setState(() {
                      tap = index;
                    });
                    print(tap);
                  },
                  child: Container(
                    height: 220,
                    margin: const EdgeInsets.symmetric(vertical: 10),
                    color: Colors.red,
                  ),
                );
              },
              childCount: 5,
            ),
          ),
        ],
      ),
    );
  }
}
