import 'package:animate_do/animate_do.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class PaginaTWPage extends StatefulWidget {
  @override
  _PaginaTWPageState createState() => _PaginaTWPageState();
}

class _PaginaTWPageState extends State<PaginaTWPage> {
  bool activar = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        floatingActionButton: FloatingActionButton(
          backgroundColor: Colors.white,
          child: FaIcon(
            FontAwesomeIcons.play,
            color: Color.fromARGB(255, 117, 26, 255),
          ),
          onPressed: () {
            setState(() {
              activar = true;
            });
          },
        ),
        backgroundColor: Color.fromARGB(255, 117, 26, 255),
        body: Center(
          child: ZoomOut(
            animate: activar,
            from: 30,
            duration: Duration(seconds: 1),
            child:
                FaIcon(FontAwesomeIcons.twitch, color: Colors.white, size: 40),
          ),
        ));
  }
}
