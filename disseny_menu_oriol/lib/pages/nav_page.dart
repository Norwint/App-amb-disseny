import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:flutter/cupertino.dart';
import 'package:disseny_menu_oriol/pages/userPage.dart';
import 'package:disseny_menu_oriol/pages/mailPage.dart';
import 'package:disseny_menu_oriol/pages/pagina1.dart';

class NavPage extends StatefulWidget {
  @override
  _NavPageState createState() => _NavPageState();
}

class _NavPageState extends State<NavPage> {
  int _selectedIndex = 0;
  List<Widget> _widgetOptions = <Widget>[
    Text('No tens notificacions'),
    MyHomePage(),
    SettingsTwoPage(),
  ];

  void _OnItemTap(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.purple,
        title: Text('Panel de Usuari'),
      ),
      body: Center(
        child: _widgetOptions.elementAt(_selectedIndex),
      ),
      floatingActionButton: BotonFlotante(),
      bottomNavigationBar: BottomNavigationBar(
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            title: Text('Notificacions'),
            icon: FaIcon(FontAwesomeIcons.bell),
          ),
          BottomNavigationBarItem(
              title: Text('Usuari'), icon: FaIcon(Icons.badge)),
          BottomNavigationBarItem(
              title: Text('Opcions'), icon: FaIcon(Icons.settings)),
        ],
        currentIndex: _selectedIndex,
        onTap: _OnItemTap,
      ),
    );
  }
}

class BotonFlotante extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return FloatingActionButton(
      child: FaIcon(FontAwesomeIcons.bookmark),
      backgroundColor: Colors.purple,
      onPressed: () {
        Navigator.push(
            context,
            CupertinoPageRoute(
                builder: (BuildContext context) => Pagina1Page()));
      },
    );
  }
}
