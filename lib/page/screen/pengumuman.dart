import 'package:flutter/material.dart';

class PengumumanPage extends StatefulWidget {
  @override
  _PengumumanPageState createState() => _PengumumanPageState();
}

class _PengumumanPageState extends State<PengumumanPage> {
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
      ),
    );
  }
}
