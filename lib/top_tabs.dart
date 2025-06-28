import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class TopTabs extends StatefulWidget {
  const TopTabs({super.key});

  @override
  State<TopTabs> createState() => _TopTabsState();
}

class _TopTabsState extends State<TopTabs> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        body: Column(
          children: [
            Theme(
              data: Theme.of(context).copyWith(
                iconTheme: IconThemeData(color: Colors.grey),
                primaryIconTheme: IconThemeData(
                    color: Colors.deepOrangeAccent), // selected icon
              ),
              child: TabBar(
                unselectedLabelColor: Colors.grey,
                unselectedLabelStyle: TextStyle(fontStyle: FontStyle.italic),
                indicatorColor: Colors.deepOrangeAccent,
                indicatorWeight: 3,
                labelColor: Colors.deepOrangeAccent,
                tabs: [
                  Tab(
                    icon: Icon(Icons.sports_soccer_rounded,
                        color: Colors.grey, size: 30),
                    child: Text('Free Tips'),
                  ),
                  Tab(
                    icon: Icon(FontAwesomeIcons.crown,
                        color: Colors.grey, size: 30),
                    child: Text('VIP'),
                  ),
                  Tab(
                    icon: Icon(Icons.live_tv_rounded,
                        color: Colors.grey, size: 30),
                    child: Text('Live score'),
                  )
                ],
              ),
            ),
            Expanded(
              child: TabBarView(
                children: [
                    ListView(
                      children: [
                         Image.asset('assets/Frame 2.png',
                          width: double.infinity),
                      ]
                    ),
                  ListView(
                    children: [
                         Image.asset('assets/Group 26.png',
                            width: double.infinity),
                    SizedBox(height: 8),
                    Center(
                      child: Text('Others',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 12,
                        fontWeight: FontWeight.bold
                      ),
                      ),
                    ),
                    Image.asset('assets/Frame 1.png')
                    ],
                  ),
                  Container(
                    width: double.infinity,
                    child: Image.asset('assets/Frame 2.png',
                        width: double.infinity),
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
