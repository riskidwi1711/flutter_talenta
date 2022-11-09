import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;

  void _incrementCounter() {
    setState(() {
      _counter++;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: Colors.deepPurple,
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Home',
            backgroundColor: Color(0xffA770EF),
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.business),
            label: 'Business',
            backgroundColor: Colors.green,
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.school),
            label: 'School',
            backgroundColor: Colors.purple,
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.settings),
            label: 'Settings',
            backgroundColor: Colors.pink,
          ),
        ],
        selectedItemColor: Colors.white,
        unselectedItemColor: Colors.grey.shade400,
      ),
      backgroundColor: Colors.white,
      body: Container(
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        child: SingleChildScrollView(
          physics: BouncingScrollPhysics(),
          child: Column(
            children: [
              Container(
                padding: EdgeInsets.symmetric(vertical: 20),
                width: MediaQuery.of(context).size.width,
                decoration: BoxDecoration(
                    gradient: LinearGradient(colors: [
                  Color(0xffA770EF),
                  Color(0xffCF8BF3),
                  Color(0xffFDB99B)
                ])),
                child: SafeArea(
                  child: Container(
                    child: Column(
                      children: [
                        Row(
                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                            children: [
                              Container(
                                height: 120,
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      'PT. Kenangan Manis Indonesia',
                                      style: TextStyle(
                                          color: Colors.white,
                                          fontSize: 18,
                                          fontWeight: FontWeight.w600),
                                    ),
                                    SizedBox(
                                      height: 30,
                                    ),
                                    Text(
                                      'RISKI DWI PATRIO',
                                      style: TextStyle(
                                          color: Colors.white,
                                          fontSize: 24,
                                          fontWeight: FontWeight.bold),
                                    ),
                                    Text('STAFF-IT',
                                        style: TextStyle(
                                            color: Colors.white,
                                            fontSize: 18,
                                            fontWeight: FontWeight.bold)),
                                  ],
                                ),
                              ),
                              Container(
                                height: 70,
                                width: 70,
                                child: CircleAvatar(
                                  child: Icon(
                                    Icons.person,
                                    color: Colors.white,
                                    size: 40,
                                  ),
                                  backgroundColor: Colors.blue,
                                ),
                              )
                            ]),
                        Container(
                          width: MediaQuery.of(context).size.width,
                          child: SingleChildScrollView(
                            scrollDirection: Axis.horizontal,
                            child: Padding(
                              padding: const EdgeInsets.only(left: 20, top: 20),
                              child: Row(
                                children: [
                                  GestureDetector(
                                    onTap: (() => print('hehhe')),
                                    child: Container(
                                      decoration: BoxDecoration(
                                          color: Colors.white,
                                          borderRadius: BorderRadius.all(
                                              Radius.circular(10))),
                                      padding: EdgeInsets.symmetric(
                                          horizontal: 10, vertical: 15),
                                      child: Center(
                                          child: Row(
                                        children: [
                                          Icon(Icons.app_blocking),
                                          Text('Request Attendance'),
                                        ],
                                      )),
                                    ),
                                  ),
                                  SizedBox(
                                    width: 10,
                                  ),
                                  Container(
                                    decoration: BoxDecoration(
                                        color: Colors.white,
                                        borderRadius: BorderRadius.all(
                                            Radius.circular(10))),
                                    padding: EdgeInsets.symmetric(
                                        horizontal: 10, vertical: 15),
                                    child: Center(
                                        child: Row(
                                      children: [
                                        Icon(Icons.app_blocking),
                                        Text('Request Attendance'),
                                      ],
                                    )),
                                  ),
                                  SizedBox(
                                    width: 10,
                                  ),
                                  Container(
                                    decoration: BoxDecoration(
                                        color: Colors.white,
                                        borderRadius: BorderRadius.all(
                                            Radius.circular(10))),
                                    padding: EdgeInsets.symmetric(
                                        horizontal: 10, vertical: 15),
                                    child: Center(
                                        child: Row(
                                      children: [
                                        Icon(Icons.app_blocking),
                                        Text('Request Attendance'),
                                      ],
                                    )),
                                  ),
                                  SizedBox(
                                    width: 10,
                                  ),
                                  Container(
                                    decoration: BoxDecoration(
                                        color: Colors.white,
                                        borderRadius: BorderRadius.all(
                                            Radius.circular(10))),
                                    padding: EdgeInsets.symmetric(
                                        horizontal: 10, vertical: 15),
                                    child: Row(
                                      children: [
                                        Icon(Icons.calendar_month),
                                        SizedBox(width: 5),
                                        Center(child: Text('Calendar')),
                                      ],
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        )
                      ],
                    ),
                  ),
                ),
              ),
              Container(
                color: Colors.grey.shade100,
                child: GridView.count(
                  shrinkWrap: true,
                  crossAxisCount: 4,
                  children: <Widget>[
                    Container(
                      child: Column(children: [
                        Column(
                          children: [
                            Icon(
                              Icons.lock_clock,
                              color: Colors.greenAccent,
                              size: 35,
                            ),
                          ],
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Text('Waktu', style: TextStyle(fontSize: 12)),
                      ]),
                    ),
                    Container(
                      child: Column(children: [
                        Column(
                          children: [
                            Icon(
                              Icons.zoom_out_sharp,
                              color: Colors.redAccent,
                              size: 35,
                            ),
                          ],
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Text('reimburstment', style: TextStyle(fontSize: 12)),
                      ]),
                    ),
                    Container(
                      child: Column(children: [
                        Column(
                          children: [
                            Icon(
                              Icons.baby_changing_station,
                              color: Colors.blueAccent,
                              size: 35,
                            ),
                          ],
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Text('Live Attendance', style: TextStyle(fontSize: 12)),
                      ]),
                    ),
                    Container(
                      child: Column(children: [
                        Column(
                          children: [
                            Icon(
                              Icons.face,
                              color: Colors.indigo,
                              size: 35,
                            ),
                          ],
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Text('File', style: TextStyle(fontSize: 12)),
                      ]),
                    ),
                    Container(
                      child: Column(children: [
                        Column(
                          children: [
                            Icon(
                              Icons.account_box_sharp,
                              color: Colors.cyanAccent,
                              size: 35,
                            ),
                          ],
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Text('File', style: TextStyle(fontSize: 12)),
                      ]),
                    ),
                    Container(
                      child: Column(children: [
                        Column(
                          children: [
                            Icon(
                              Icons.access_alarm_outlined,
                              color: Colors.amberAccent,
                              size: 35,
                            ),
                          ],
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Text('File', style: TextStyle(fontSize: 12)),
                      ]),
                    ),
                    Container(
                      child: Column(children: [
                        Column(
                          children: [
                            Icon(
                              Icons.safety_divider_rounded,
                              color: Colors.blueAccent,
                              size: 35,
                            ),
                          ],
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Text('File', style: TextStyle(fontSize: 12)),
                      ]),
                    ),
                    Container(
                      child: Column(children: [
                        Column(
                          children: [
                            Icon(
                              Icons.safety_check_outlined,
                              color: Colors.redAccent,
                              size: 35,
                            ),
                          ],
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Text('File', style: TextStyle(fontSize: 12)),
                      ]),
                    )
                  ],
                ),
              ),
              Container(
                padding: EdgeInsets.all(20),
                width: MediaQuery.of(context).size.width,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              'Sub Ordinate',
                              style: TextStyle(
                                  fontWeight: FontWeight.bold, fontSize: 18),
                            ),
                            Text('View All'),
                          ],
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        CircleAvatar(
                          child: Icon(
                            Icons.person,
                            color: Colors.white,
                          ),
                        )
                      ],
                    ),
                    SizedBox(
                      height: 30,
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              'Announcement',
                              style: TextStyle(
                                  fontWeight: FontWeight.bold, fontSize: 18),
                            ),
                            Text('View All'),
                          ],
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Column(
                          children: [
                            Card(
                              child: ListTile(
                                  leading: Icon(
                                    Icons.announcement,
                                    color: Colors.red,
                                  ),
                                  trailing: Text('31 Oct 2022'),
                                  title: Text('Potongan BPJS')),
                            ),
                            Card(
                              child: ListTile(
                                  leading: Icon(
                                    Icons.announcement,
                                    color: Colors.red,
                                  ),
                                  trailing: Text('31 Oct 2022'),
                                  title: Text('Training')),
                            )
                          ],
                        )
                      ],
                    )
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
