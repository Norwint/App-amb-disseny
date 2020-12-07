import 'package:animate_do/animate_do.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:disseny_menu_oriol/pages/paginaTw.dart';
import 'package:disseny_menu_oriol/pages/nav_page.dart';

class Pagina1Page extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: SlideInRight(from: 100, child: Text('App amb Disseny')),
        actions: <Widget>[
          IconButton(
              icon: FaIcon(FontAwesomeIcons.twitch),
              onPressed: () {
                Navigator.push(
                    context,
                    CupertinoPageRoute(
                        builder: (BuildContext context) => PaginaTWPage()));
              }),
          FadeIn(
              duration: Duration(milliseconds: 600),
              child: IconButton(
                  icon: Icon(Icons.navigate_next),
                  onPressed: () {
                    Navigator.push(
                        context,
                        CupertinoPageRoute(
                            builder: (BuildContext context) => NavPage()));
                  })),
        ],
      ),
      floatingActionButton: ElasticInRight(
          child: FloatingActionButton(
        child: FaIcon(FontAwesomeIcons.bookmark),
        onPressed: () {
          Navigator.push(
              context,
              CupertinoPageRoute(
                  builder: (BuildContext context) => Pagina1Page()));
        },
      )),
      body: Center(
        child: Column(mainAxisAlignment: MainAxisAlignment.center, children: <
            Widget>[
          ElasticIn(
            delay: Duration(milliseconds: 1100),
            child: Icon(
              Icons.badge,
              color: Colors.blue,
              size: 50,
            ),
          ),
          FadeInDown(
              delay: Duration(milliseconds: 200),
              child: Text('App amb Disseny',
                  style: TextStyle(fontSize: 35, fontWeight: FontWeight.w200))),
          FadeInDown(
              delay: Duration(milliseconds: 800),
              child: Text('Oriol Molina López',
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.w400))),
          FadeInLeft(
              delay: Duration(milliseconds: 1100),
              child: Container(
                width: 200,
                height: 2,
                color: Colors.blue,
              ))
        ]),
      ),
    );
  }
}
