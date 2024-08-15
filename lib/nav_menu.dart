import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

/// Flutter code sample for [BottomNavigationBar].

void main() => runApp(const BottomNavigationBarExampleApp());

class BottomNavigationBarExampleApp extends StatelessWidget {
  const BottomNavigationBarExampleApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: BottomNavigationBarExample(),
    );
  }
}

class BottomNavigationBarExample extends StatefulWidget {
  const BottomNavigationBarExample({super.key});

  @override
  State<BottomNavigationBarExample> createState() =>
      _BottomNavigationBarExampleState();
}

class _BottomNavigationBarExampleState
    extends State<BottomNavigationBarExample> {
  int _selectedIndex = 0;
  static const TextStyle optionStyle =
      TextStyle(fontSize: 30, fontWeight: FontWeight.bold);
  static const List<Widget> _widgetOptions = <Widget>[
    Center(
      child: Card(
        semanticContainer: true,
        clipBehavior: Clip.antiAliasWithSaveLayer,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.all(Radius.circular(30)),
        ),
        child: Padding(
          padding: EdgeInsets.symmetric(vertical: 30, horizontal: 70),
          child: Column(
            mainAxisSize: MainAxisSize.max,
            children: <Widget>[
              CircleAvatar(
                radius: 50,
                backgroundImage: NetworkImage('https://picsum.photos/200/300'),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 15),
                child: Text(
                  'Agisna Rizkan Rizkullah',
                  style: TextStyle(
                    fontSize: 20,
                    color: Color.fromARGB(255, 48, 53, 146),
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              Text(
                '202110001',
                style: TextStyle(
                  fontSize: 16,
                  color: Color.fromARGB(255, 48, 53, 146),
                ),
              ),
              Text(
                'XII RPL 1',
                style: TextStyle(
                  fontSize: 16,
                  color: Color.fromARGB(255, 48, 53, 146),
                ),
              ),
              Padding(
                padding: EdgeInsets.only(top: 20),
                child: Center(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Column(
                        children: <Widget>[
                          Text(
                            '    Poin    ',
                            style: TextStyle(
                              color: Color.fromARGB(255, 48, 53, 146),
                            ),
                          ),
                          Text(
                            '30',
                            style: TextStyle(
                              fontSize: 30,
                              fontWeight: FontWeight.bold,
                              color: Color.fromARGB(255, 48, 53, 146),
                            ),
                          ),
                        ],
                      ),
                      Text(
                        ' | ',
                        style: TextStyle(
                          fontSize: 60,
                          fontWeight: FontWeight.w200,
                          color: Color.fromARGB(255, 48, 53, 146),
                        ),
                      ),
                      Column(
                        children: <Widget>[
                          Text(
                            'Pelanggaran',
                            style: TextStyle(
                              color: Color.fromARGB(255, 48, 53, 146),
                            ),
                          ),
                          Text(
                            '5',
                            style: TextStyle(
                              fontSize: 30,
                              fontWeight: FontWeight.bold,
                              color: Color.fromARGB(255, 48, 53, 146),
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
              Image(
                image: AssetImage('assets/images/logo.png'),
              ),
              Card(
                color: Color.fromARGB(255, 251, 143, 49),
                elevation: 2,
                child: Padding(
                  padding: EdgeInsets.all(8),
                  child: Center(
                    child: Text(
                      'Logout',
                      style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                        fontSize: 16,
                      ),
                    ),
                  ),
                ),
                margin: EdgeInsets.only(top: 40),
              ),
            ],
          ),
        ),
        elevation: 10,
        margin: EdgeInsets.only(bottom: 50, top: 10, right: 20, left: 20),
      ),
    ),
    Center(
        child: Column(
      mainAxisAlignment: MainAxisAlignment.start,
      children: <Widget>[
        Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Padding(
              padding: EdgeInsets.only(left: 20, top: 10),
              child: Text(
                'Tata Tertib Sekolah',
                style: TextStyle(
                  fontSize: 20,
                  color: Color.fromARGB(255, 48, 53, 146),
                  fontWeight: FontWeight.bold,
                ),
              ),
            )
          ],
        ),
        Padding(
          padding: EdgeInsets.only(top: 20, left: 20),
          child: Row(
            children: [
              Text(
                'Siswa Wajib Berpakaian Lengkap',
                style: TextStyle(
                  fontSize: 16,
                  color: Color.fromARGB(255, 48, 53, 146),
                  fontWeight: FontWeight.bold,
                ),
              ),
            ],
          ),
        ),
        Padding(
          padding: EdgeInsets.only(top: 20, left: 20, right: 20),
          child: Card(
            child: Row(
              children: <Widget>[
                Column(
                  children: [
                    Padding(
                      padding: EdgeInsets.only(top: 10, left: 10),
                      child: Text(
                        'Poin Pelanggaran',
                        style: TextStyle(
                            fontSize: 12,
                            color: Color.fromARGB(255, 48, 53, 146),
                            fontWeight: FontWeight.normal),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(
                        bottom: 10,
                        top: 10,
                      ),
                      child: CircleAvatar(
                        radius: 20,
                        backgroundColor: Color.fromARGB(255, 48, 53, 146),
                        child: Text(
                          '+10',
                          style: TextStyle(
                              fontSize: 16,
                              color: Colors.white,
                              fontWeight: FontWeight.normal),
                        ),
                      ),
                    ),
                  ],
                ),
                Text(
                  'Siswa Tidak Memakai',
                  style: TextStyle(
                    overflow: TextOverflow.ellipsis,
                    fontSize: 16,
                    color: Color.fromARGB(255, 48, 53, 146),
                  ),
                ),
              ],
            ),
          ),
        ),
      ],
    )),
    Text(
      'Index 0: Profile',
      style: optionStyle,
    ),
    Text(
      'Index 1: Tata Tertib',
      style: optionStyle,
    ),
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Center(
        child: _widgetOptions.elementAt(_selectedIndex),
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.person),
            label: 'Profile',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.book),
            label: 'Tata Tertib',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.warning),
            label: 'Pelanggaran',
          ),
        ],
        currentIndex: _selectedIndex,
        selectedItemColor: Color.fromARGB(255, 48, 53, 146),
        onTap: _onItemTapped,
      ),
    );
  }
}
