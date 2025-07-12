import 'package:flutter/material.dart';
import 'package:topzibet/history.dart';
import 'package:topzibet/top_tabs.dart';

class HomepageMain extends StatefulWidget {
  const HomepageMain({super.key});

  @override
  State<HomepageMain> createState() => _HomepageMainState();
}

class _HomepageMainState extends State<HomepageMain> {

  int _selectedIndex = 0;

  // List of pages to navigate to
  late List<Widget> _pages;

  @override
  void initState() {
    super.initState();
    _pages = [
      TopTabs(),
      Center(child: Text('Search')),
      Center(
        child: ElevatedButton(onPressed: (){
          Navigator.push(context, MaterialPageRoute(builder: (context) => History()));}, 
        child: Text('HIStory Page')),
      ),
    ];
  }

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // backgroundColor: Colors.black,
       appBar: PreferredSize(
        preferredSize: Size.fromHeight(50.0), // 👈 Set your desired height
        child: AppBar(
        forceMaterialTransparency: true,
        leading: IconButton(
          onPressed: () {}, 
          icon: Image.asset('assets/logo1.png',
          width:150,
          height: 150
          ),
          ),
          actions: [
            IconButton(
              onPressed: () {}, 
              icon: Image.asset('assets/visit_our_telegram.png'),),
            IconButton(
              onPressed: () {}, 
              icon: Image.asset('assets/group4.png'),
            ),
          ],
      ),
    ),
    body: _pages[_selectedIndex],
            bottomNavigationBar: BottomNavigationBar(
              backgroundColor: Colors.black,
          unselectedItemColor: Colors.blueGrey,
          selectedItemColor: Colors.deepOrangeAccent,
          selectedFontSize: 17,
          unselectedFontSize: 15,
          unselectedLabelStyle: TextStyle(
            color: Colors.blueGrey,
            fontStyle: FontStyle.italic
          ),
          selectedLabelStyle: TextStyle(
            color: Colors.blueGrey,
            fontStyle: FontStyle.normal
          ),
          currentIndex: _selectedIndex,
          onTap: _onItemTapped,
          items: [
            BottomNavigationBarItem(
              icon: Icon(Icons.monetization_on),
              label: 'Earn',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.favorite),
              label: 'Favorite',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.person),
              label: 'Profile',
            ),
          ],
        ),
    );
  }
}