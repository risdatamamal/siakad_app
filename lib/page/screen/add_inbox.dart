import 'package:flutter/material.dart';

class AddInbox extends StatefulWidget {
  @override
  _AddInboxState createState() => _AddInboxState();
}

class _AddInboxState extends State<AddInbox> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          leading: InkWell(
              highlightColor: Theme.of(context).canvasColor,
              onTap: () => Navigator.pop(context),child: Icon(Icons.reply, color: Theme.of(context).accentColor, size: 35,)),
          elevation: 0.0,
          title: Text("Inbox", style: TextStyle(
              fontSize: 35.0,
              color: Color(0xff333333),
              fontWeight: FontWeight.bold),),
          centerTitle: false,
          backgroundColor: Theme.of(context).canvasColor,
        ),
        body: Stack(
          children: <Widget>[
            Container(
              margin: const EdgeInsets.only(top: 60, left: 60, right: 30),
              child: ListView(
                children: <Widget>[
                  Text("From"),
                  SizedBox(height: 10,),
                  Container(
                    padding: const EdgeInsets.symmetric(horizontal: 20),
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: Colors.white
                    ),
                    child: TextFormField(
                      decoration: InputDecoration(hintText: 'mike@esaunggul.ac.id', border: InputBorder.none),
                      readOnly: true,
                    ),
                  ),
                  SizedBox(height: 20,),
                  Text("To"),
                  SizedBox(height: 10,),
                  Row(
                    children: <Widget>[
                      Expanded(
                        flex: 2,
                        child: Container(
                          padding: const EdgeInsets.symmetric(horizontal: 20),
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                              color: Colors.white
                          ),
                          child: TextFormField(
                            decoration: InputDecoration(hintText: 'john', hintStyle: TextStyle(color: Theme.of(context).highlightColor), border: InputBorder.none),
                          ),
                        ),
                      ),
                      Expanded(
                        flex: 1,
                        child: Center(
                          child: Text("@esaunggul.ac.id", style: TextStyle(fontSize: 12),),
                        ),
                      )
                    ],
                  ),
                  SizedBox(height: 20,),
                  Text("Message"),
                  SizedBox(height: 10,),
                  Container(
                    height: 250,
                    padding: const EdgeInsets.symmetric(horizontal: 20),
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: Colors.white
                    ),
                    child: TextFormField(
                      maxLengthEnforced: false,
                      maxLines: 10,
                      maxLength: 100,
                      decoration: InputDecoration(hintText: 'type message . . .', border: InputBorder.none),
                    ),
                  ),
                ],
              ),
            ),
            Positioned(
              bottom: 0,
              left: 0,
              right: 0,
              child: InkWell(
                onTap: () {},
                borderRadius: BorderRadius.only(topRight: Radius.circular(30), topLeft: Radius.circular(30)),
                child: Container(
                  height: 50,
                  decoration: BoxDecoration(
                      color: Theme.of(context).accentColor,
                      borderRadius: BorderRadius.only(topRight: Radius.circular(20), topLeft: Radius.circular(20))
                  ),
                  child: Center(
                    child: Text("Send", style: TextStyle(
                        color: Colors.white,
                        fontSize: 20.0
                    ),),
                  ),
                ),
              ),
            ),
          ],
        )
    );
  }
}
