import 'package:dsc_app/page/screen/add_inbox.dart';
import 'package:dsc_app/page/screen/info_inbox.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class InboxPage extends StatefulWidget {
  @override
  _InboxPageState createState() => _InboxPageState();
}

class _InboxPageState extends State<InboxPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).canvasColor,
      floatingActionButton: FloatingActionButton(
        onPressed: () => Navigator.push(context, MaterialPageRoute(builder: (context) => AddInbox())),
        child: Icon(Icons.add, color: Colors.white,),
      ),
      body: CustomScrollView(
        slivers: <Widget>[
          SliverAppBar(
            pinned: true,
            expandedHeight: 150.0,
            backgroundColor: Color(0xffF9FAF5),
            title: Text(
              "Inbox",
              style: TextStyle(
                  fontSize: 35.0,
                  color: Color(0xff333333),
                  fontWeight: FontWeight.bold),
            ),
            actions: <Widget>[
              Container(
                margin: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                child: InkWell(
                  borderRadius: BorderRadius.circular(40),
                  onTap: () => print("Tap"),
                  child: Center(
                    child: Icon(
                      Icons.more_vert,
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
                      padding: const EdgeInsets.symmetric(
                          horizontal: 20, vertical: 1),
                      margin: const EdgeInsets.only(bottom: 20.0),
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
                  ],
                ),
              ),
            ),
          ),
          _listInbox()
        ],
      ),
    );
  }
  Widget _listInbox() {
    return SliverList(
        delegate: SliverChildBuilderDelegate((context, index) {
          return Container(
            height: 160,
            margin: const EdgeInsets.symmetric(horizontal: 30),
            child: Stack(
              alignment: AlignmentDirectional.topCenter,
              children: <Widget>[
                Container(
                  margin: const EdgeInsets.only(top: 35),
                  child: Container(
                    height: 110,
                    margin: const EdgeInsets.symmetric(horizontal: 30),
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        color: Colors.white,
                        boxShadow: [
                          BoxShadow(
                              offset: Offset(20, 7),
                              blurRadius: 40,
                              color: Colors.black.withOpacity(0.08))
                        ]),
                  ),
                ),
                InkWell(
                  onTap: () => Navigator.push(context, CupertinoPageRoute(builder: (context) => InfoInbox())),
                  borderRadius: BorderRadius.circular(20),
                  child: Container(
                    height: 130,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        color: Colors.white,
                        boxShadow: [
                          BoxShadow(
                              offset: Offset(0, 10),
                              blurRadius: 20,
                              color: Colors.black.withOpacity(0.08))
                        ]),
                    padding: const EdgeInsets.symmetric(horizontal: 18, vertical: 9),
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Expanded(
                          child: CircleAvatar(),
                        ),
                        SizedBox(width: 5,),
                        Expanded(
                          flex: 8,
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: <Widget>[
                              Row(
                                mainAxisAlignment:
                                MainAxisAlignment.spaceBetween,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: <Widget>[
                                  RichText(
                                    text: TextSpan(children: <TextSpan>[
                                      TextSpan(
                                          text: "Mike\n",
                                          style: TextStyle(
                                              fontWeight: FontWeight.bold,
                                              fontSize: 14,
                                              color: Color(0xff333333))),
                                      TextSpan(
                                          text: "Portofolio\n",
                                          style: TextStyle(
                                              fontSize: 12,
                                              color: Color(0xff333333))),
                                    ]),
                                  ),
                                  Text(
                                    "Yesterday 01:01 PM",
                                    style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                        fontSize: 12,
                                        color: Color(0xff333333)),
                                  )
                                ],
                              ),
                              Text(
                                "Stop wasting time looking for files buried in folders. Visually organize all your assets in one place",
                                maxLines: 2,
                                overflow: TextOverflow.ellipsis,
                                style: TextStyle(
                                    color: Color(0xff333333).withOpacity(0.7)),
                              ),
                              SizedBox(height: 10,),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children: <Widget>[
                                  Container(),
                                  InkWell(
                                    onTap: () {
                                      showDialog(context: context, builder: (context) {
                                        return AlertDialog();
                                      });
                                    },
                                    highlightColor: Colors.transparent,
                                    child: Row(
                                      crossAxisAlignment: CrossAxisAlignment.center,
                                      children: <Widget>[
                                        Icon(Icons.attach_file, size: 18, color: Color(0xff1FB5EB)),
                                        Text("Attachment", style: TextStyle(
                                            color: Color(0xff1FB5EB),
                                            fontSize: 12
                                        ),)
                                      ],
                                    ),
                                  ),
                                ],
                              )
                            ],
                          ),
                        )
                      ],
                    ),
                  ),
                )
              ],
            ),
          );
        }, childCount: 19));
  }
}