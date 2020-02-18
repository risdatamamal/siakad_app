import 'package:flutter/material.dart';

class InfoInbox extends StatefulWidget {
  @override
  _InfoInboxState createState() => _InfoInboxState();
}

class _InfoInboxState extends State<InfoInbox> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).canvasColor,
      body: Row(
        children: <Widget>[
          Expanded(
            child: Stack(
              children: <Widget>[
                Container(
                  width: 70,
                  margin: const EdgeInsets.symmetric(vertical: 50),
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      boxShadow: [
                        BoxShadow(
                            color: Colors.black.withOpacity(0.08),
                            offset: Offset(20, 7),
                            blurRadius: 40
                        ),
                      ],
                      color: Colors.white
                  ),
                ),
                Container(
                  width: 60,
                  decoration: BoxDecoration(
                      boxShadow: [
                        BoxShadow(
                            color: Colors.black.withOpacity(0.08),
                            offset: Offset(20, 7),
                            blurRadius: 40
                        ),
                      ],
                      color: Colors.white
                  ),
                  padding: const EdgeInsets.only(top: 30),
                  child: SafeArea(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: <Widget>[
                        IconButton(
                            onPressed: () => Navigator.pop(context),
                            icon: Icon(Icons.reply, color: Color(0xff1FB5EB), size: 30,)),
                        SizedBox(
                          height: 45,
                        ),
                        CircleAvatar(),

                      ],
                    ),
                  ),
                ),

              ],
            ),
          ),
          Expanded(
            flex: 5,
            child: Stack(
              children: <Widget>[
                Container(
                  padding: const EdgeInsets.only(top: 50.0, left: 45.0, right: 10.0),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Expanded(
                        child: Center(
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: <Widget>[
                                Row(
                                  children: <Widget>[
                                    IconButton(
                                      onPressed: () {},
                                      icon: Icon(Icons.reply_all, color: Color(0xff333333).withOpacity(0.4),),
                                    ),
                                    IconButton(
                                      onPressed: () {},
                                      icon: Icon(Icons.folder, color: Color(0xff333333).withOpacity(0.4),),
                                    ),
                                    IconButton(
                                      onPressed: () {},
                                      icon: Icon(Icons.restore_from_trash, color: Color(0xff333333).withOpacity(0.4),),
                                    ),
                                  ],
                                ),
                                Row(
                                  children: <Widget>[
                                    RichText(
                                      text: TextSpan(
                                          children: <TextSpan> [
                                            TextSpan(
                                                text: "1 / ",
                                                style: TextStyle(
                                                  color: Color(0xff333333),
                                                )
                                            ),
                                            TextSpan(
                                                text: "180",
                                                style: TextStyle(
                                                  color: Color(0xff333333).withOpacity(0.4),
                                                )
                                            ),
                                          ]
                                      ),
                                    ),
                                    SizedBox(width: 5.0,),
                                    Icon(Icons.arrow_back_ios, color: Color(0xff333333).withOpacity(0.4),),
                                    Icon(Icons.arrow_forward_ios)
                                  ],
                                )
                              ],
                            )
                        ),
                      ),
                      Expanded(
                        child: RichText(
                          text: TextSpan(
                              style: TextStyle(
                                  color: Color(0xff333333),
                                  fontSize: 16
                              ),
                              children: <TextSpan>[
                                TextSpan(
                                    text: "Mike\n",
                                    style: TextStyle(
                                        fontSize: 18,
                                        fontWeight: FontWeight.bold
                                    )
                                ),
                                TextSpan(
                                  text: "Interview Scheduled\n",
                                ),
                                TextSpan(
                                    text: "sam@gmail.com",
                                    style: TextStyle(
                                        color: Color(0xff333333).withOpacity(0.4)
                                    )
                                )
                              ]
                          ),
                        ),
                      ),
                      Expanded(
                          flex: 6,
                          child: Container(
                            margin: const EdgeInsets.only(bottom: 30),
                            child: ListView(
                              children: <Widget>[
                                Text(
                                  "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Vestibulum fermentum facilisis libero, venenatis mattis orci hendrerit eget. Etiam ultrices mollis justo, nec fermentum elit viverra eu. Cras at cursus turpis. Nullam magna sem, vulputate quis massa nec, mollis sollicitudin dui. Sed eu massa in arcu pharetra posuere. Phasellus maximus neque non ex dapibus fringilla. Praesent nec lacinia enim. Curabitur a dui nisl.",
                                  style: TextStyle(
                                      fontSize: 16,
                                      color: Color(0xff333333).withOpacity(0.4)
                                  ),
                                ),
                                Container(
                                  margin: const EdgeInsets.symmetric(vertical: 10),
                                  child: Row(
                                    crossAxisAlignment: CrossAxisAlignment.center,
                                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                    children: <Widget>[
                                      InkWell(
                                        onTap: () {},
                                        highlightColor: Colors.transparent,
                                        borderRadius: BorderRadius.circular(10),
                                        child: Row(
                                          children: <Widget>[
                                            Icon(Icons.attach_file, color: Color(0xff1FB5EB),),
                                            SizedBox(width: 10,),
                                            Text("Attachment", style: TextStyle(
                                                color: Color(0xff1FB5EB)
                                            ),)
                                          ],
                                        ),
                                      ),
                                      Container()
                                    ],
                                  ),
                                ),
                                Container(
                                  height: 150,
                                  child: Row(
                                    children: <Widget>[
                                      Expanded(
                                        child: Column(
                                          children: <Widget>[
                                            Expanded(
                                              child: Container(
                                                margin: const EdgeInsets.only(bottom: 10),
                                                color: Colors.red,
                                              ),
                                            ),
                                            Expanded(
                                              child: Container(
                                                color: Colors.red,
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                      Expanded(
                                        flex: 2,
                                        child: Container(
                                          margin: const EdgeInsets.symmetric(horizontal: 10),
                                          color: Colors.blue,),
                                      )
                                    ],
                                  ),
                                ),
                                Container(
                                  height: 90,
                                )
                              ],
                            ),
                          )
                      )
                    ],
                  ),
                ),
                Positioned(
                  bottom: 30,
                  left: 20,
                  right: 20,
                  child: Container(
                    padding: const EdgeInsets.symmetric(horizontal: 20),
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        color: Colors.white,
                        boxShadow:[
                          BoxShadow(
                              color: Colors.black.withOpacity(0.2),
                              offset: Offset(0, 3),
                              blurRadius: 10
                          )
                        ]
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      crossAxisAlignment: CrossAxisAlignment.end,
                      children: <Widget>[
                        Expanded(
                          child: TextFormField(
                            decoration: InputDecoration(
                              hintText: "Type Message . . .",
                              border: InputBorder.none,
                            ),
                            maxLines: 10,
                            minLines: 1,
                          ),
                        ),
                        Container(
                          margin: const EdgeInsets.only(bottom: 10),
                          child: Row(
                            children: <Widget>[
                              InkWell(
                                onTap: () {},
                                child: Icon(Icons.attach_file),
                              ),
                              SizedBox(width: 10.0,),
                              InkWell(
                                onTap: () {},
                                child: Icon(Icons.near_me, color: Color(0xff1FB5EB),),
                              ),
                            ],
                          ),
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
  }
}