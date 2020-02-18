import 'package:flutter/material.dart';

class DownloadFile extends StatefulWidget {
  @override
  _DownloadFileState createState() => _DownloadFileState();
}

class _DownloadFileState extends State<DownloadFile> {
  int tap;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: <Widget>[
          SliverAppBar(
            pinned: true,
            expandedHeight: 140.0,
            backgroundColor: Color(0xffF9FAF5),
            title: Text(
              "Download File",
              style: TextStyle(
                  fontSize: 20.0,
                  color: Color(0xff333333),
                  ),
            ),
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
                      margin: const EdgeInsets.only(bottom: 10),
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
