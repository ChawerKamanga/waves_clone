import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:waves_clone/for_you_screen.dart';

class MyHomePage extends StatefulWidget {
  final String appName;
  const MyHomePage({Key? key, required this.appName}) : super(key: key);

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _selectedIndex = 0;
  static const TextStyle optionStyle =
      TextStyle(fontSize: 30, fontWeight: FontWeight.bold);
  static const List<Widget> _widgetOptions = <Widget>[
    ForYouScreen(),
    Text(
      'Index 1: Business',
      style: optionStyle,
    ),
    Text(
      'Index 2: School',
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
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.black,
        leading: IconButton(
          onPressed: () {},
          icon: const Icon(
            Icons.search,
            size: 28,
          ),
        ),
        title: Text(
          'Waves',
          style: GoogleFonts.openSans(
            fontSize: 21.0,
            fontWeight: FontWeight.bold,
            color: Colors.white,
          ),
        ),
        centerTitle: true,
        actions: const [
          Icon(
            Icons.settings_outlined,
            size: 28,
          ),
        ],
      ),
      body: Center(
        child: _widgetOptions.elementAt(_selectedIndex),
      ),
      bottomNavigationBar: Theme(
        data: Theme.of(context).copyWith(canvasColor: Colors.black),
        child: BottomNavigationBar(
          type: BottomNavigationBarType.fixed,
          items: const <BottomNavigationBarItem>[
            BottomNavigationBarItem(
              icon: Icon(Icons.face),
              label: 'For you',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.music_note),
              label: 'Songs',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.album_rounded),
              label: 'Albums',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.person_add),
              label: 'Artists',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.queue_music_outlined),
              label: 'Playlists',
            ),
          ],
          currentIndex: _selectedIndex,
          selectedItemColor: Colors.purple[500],
          onTap: _onItemTapped,
          showUnselectedLabels: true,
          showSelectedLabels: true,
        ),
      ),
    );
  }
}
