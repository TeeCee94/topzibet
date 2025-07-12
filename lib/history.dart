import 'package:flutter/material.dart';

class History extends StatelessWidget {
  History({super.key});

  final List items = [
    {
      'match': 'Fc Bayern vs Manutd',
      'bet': 'Over 2.5 @2.10',
      'kickoff': '11:00 am',
      'status': 'Not yet Started',
    },
    {
      'match': 'Chelsea vs Mancity',
      'bet': 'Both Team to score @3.66',
      'kickoff': '10:00 AM',
      'status': 'Played and Won',
    },
    {
      'match': 'Newcastle vs Arsenal Fc',
      'bet': 'Over 2.5 @2.10',
      'kickoff': '10:00 AM',
      'status': 'Played and Lost',
    },
    {
      'match': 'Fc Bayern vs Manutd',
      'bet': 'Over 2.5 @2.10',
      'kickoff': '11:00 am',
      'status': 'Not yet Started',
    },
    {
      'match': 'Chelsea vs Mancity',
      'bet': 'Both Team to score @3.66',
      'kickoff': '10:00 AM',
      'status': 'Played and Won',
    },
    {
      'match': 'Newcastle vs Arsenal Fc',
      'bet': 'Over 2.5 @2.10',
      'kickoff': '10:00 AM',
      'status': 'Played and Lost',
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: Icon(Icons.arrow_back, 
          color: Colors.white),
          onPressed: () => Navigator.pop(context),
        ),
        backgroundColor: Colors.black,
        title: Text(
          'JAMES History',
          style: TextStyle(color: Colors.orange, 
          fontWeight: FontWeight.bold,
          fontSize: 18),
        ),
      ),
      body: Column(
        children: [
          Expanded(
            child: ListView.builder(
              shrinkWrap: true,
              // padding: EdgeInsets.all(0),
                itemCount: 6,
                itemBuilder: (context, position) {
                  final item = items[position];
                  return Column(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Flexible(
                        child: ListTile(
                          contentPadding: EdgeInsets.fromLTRB(15, 0, 0, 0),
                          title: Text(
                            item['match']!,
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              color: Colors.white,
                            ),
                          ),
                          subtitle: Text(
                            item['bet']!,
                            style: TextStyle(
                                color: Colors.white70,
                                fontWeight: FontWeight.normal),
                          ),
                          trailing: SizedBox(
                            width: 100,
                            height: 60,
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  'Kickoff Time:',
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 12,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                                Text(
                                  item['kickoff']!,
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 12,
                                    fontWeight: FontWeight.normal,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                      //  SizedBox(height: 5),
                                Padding(
                                  padding: EdgeInsets.fromLTRB(15, 0, 25, 0),
                                  child: Container(
                                    width: 360,
                                    decoration: BoxDecoration(
                                      color: item['status'] == 'Not yet Started'
                                          ? const Color.fromARGB(255, 65, 64, 64)
                                          : item['status'] == 'Played and Won'
                                              ? const Color.fromARGB(255, 0, 111, 4)
                                              : const Color.fromARGB(255, 141, 10, 1),
                                    ),
                                    height: 20,
                                    child: Center(
                                      child: Text(
                                        item['status']!,
                                        style: TextStyle(
                                            color: Colors.white, fontSize: 12),
                                      ),
                                    ),
                                  ),
                                )
                    ],
                  );
                }
                ),
          ),
          SizedBox(
            height: 30,
            child: Center(
              child: Text(
                '11/10/2024',
                style: TextStyle(
                    color: Colors.white,
                    fontSize: 12,
                    fontWeight: FontWeight.normal),
              ),
            ),
          ),
          Expanded(
            child: ListView.builder(
                itemCount: 6,
                itemBuilder: (context, position) {
                  final item = items[position];
                  return Column(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Flexible(
                        child: ListTile(
                          contentPadding: EdgeInsets.fromLTRB(15, 0, 0, 0),
                          title: Text(
                            item['match']!,
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              color: Colors.white,
                            ),
                          ),
                          subtitle: Text(
                            item['bet']!,
                            style: TextStyle(
                                color: Colors.white70,
                                fontWeight: FontWeight.normal),
                          ),
                          trailing: SizedBox(
                            width: 100,
                            height: 60,
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  'Kickoff Time:',
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 12,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                                Text(
                                  item['kickoff']!,
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 12,
                                    fontWeight: FontWeight.normal,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                       SizedBox(height: 5),
                                Padding(
                                  padding: EdgeInsets.fromLTRB(15, 0, 25, 0),
                                  child: Container(
                                    width: 360,
                                    decoration: BoxDecoration(
                                      color: item['status'] == 'Not yet Started'
                                          ? const Color.fromARGB(255, 65, 64, 64)
                                          : item['status'] == 'Played and Won'
                                              ? const Color.fromARGB(255, 0, 111, 4)
                                              : const Color.fromARGB(255, 141, 10, 1),
                                    ),
                                    height: 20,
                                    child: Center(
                                      child: Text(
                                        item['status']!,
                                        style: TextStyle(
                                            color: Colors.white, fontSize: 12),
                                      ),
                                    ),
                                  ),
                                )
                    ],
                  );
                }
                ),
          ),
        ],
      ),
    );
  }
}
