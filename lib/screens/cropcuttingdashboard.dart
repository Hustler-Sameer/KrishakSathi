import 'package:flutter/material.dart';

class CCEDashBoard extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _CCEDashboard();
  }
}

class _CCEDashboard extends State<CCEDashBoard> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: SafeArea(
        child: Drawer(
          child: ListView(
            padding: EdgeInsets.zero,
            children: [
              Container(
                decoration: BoxDecoration(color: Color(0xFF610361)),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(top: 8.0),
                      child: Image.asset(
                        'lib/assets/newsbi_logo.png',
                        fit: BoxFit.fill,
                        width: 150,
                        height: 50,
                      ),
                    ),
                    const DrawerHeader(
                      decoration: BoxDecoration(
                        color: Color(0xFF610361),
                      ),
                      child: UserAccountsDrawerHeader(
                        accountName: Text(
                          "Ram Sharma",
                          textAlign: TextAlign.center,
                          style: TextStyle(fontSize: 16),
                        ),
                        accountEmail: Text("Ram@gmail.com"),
                        decoration: BoxDecoration(
                          color: Color(0xFF610361),
                        ),
                        currentAccountPictureSize: Size.square(45),
                        currentAccountPicture: CircleAvatar(
                          backgroundColor: Color.fromARGB(255, 179, 14, 179),
                          child: Text(
                            "R",
                            style: TextStyle(
                                fontSize: 25.0,
                                color: Color.fromARGB(255, 0, 0, 0)),
                          ), //Text
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              ListTile(
                leading: const Icon(Icons.dashboard),
                title: const Text("Dashboard"),
                onTap: () {
                  print("profile clicked!");
                },
              ),
              Container(
                decoration: BoxDecoration(
                    border: Border(
                        bottom: BorderSide(
                            color: const Color.fromARGB(54, 0, 0, 0),
                            width: 1.5))),
              ),
              Padding(
                padding: EdgeInsets.fromLTRB(15, 15, 0, 35),
                child: Text(
                  "Services",
                  style: TextStyle(color: Colors.black54),
                ),
              ),
              ListTile(
                leading: Image.asset(
                  'lib/assets/harvesting.png',
                  color: Colors.black,
                  height: 25,
                ),
                title: const Text("Crop Cutting Experiment (CCE)"),
                onTap: () {
                  print("Crop Cutting Experiment (CCE)");
                },
              ),
              ListTile(
                leading: const Icon(Icons.monitor_heart),
                title: const Text("Crop Health Monitoring (CHM)"),
                onTap: () {
                  print("Crop Health Monitoring Clicked");
                },
              ),
              ListTile(
                leading: const Icon(Icons.satellite_alt_outlined),
                title: const Text("Automatic Weather Stations"),
                onTap: () {
                  print("Automatic Weather Station clicked");
                },
              ),
              ListTile(
                leading: const Icon(Icons.list_alt_outlined),
                title: const Text("Survey Report"),
                onTap: () {
                  print("Survey Report clicked!");
                },
              ),
              ListTile(
                leading: const Icon(Icons.groups_2),
                title: const Text("Employee Engagement"),
                onTap: () {
                  print("Employee Engagement clicked!");
                },
              ),
            ],
          ),
        ),
      ),
      appBar: AppBar(
        title: Text(' CCE Dashboard'),
        titleTextStyle: const TextStyle(
            fontWeight: FontWeight.bold,
            color: Colors.white,
            fontSize: 24,
            letterSpacing: 2),
        centerTitle: false,
        backgroundColor: Color(0xFF700C79),
        actions: [
          IconButton(
              onPressed: () {
                print("Search clicked");
              },
              icon: Icon(Icons.search_outlined)),
          IconButton(
              onPressed: () {
                print("Filter button clicked");
              },
              icon: Icon(Icons.filter_alt_rounded)),
          IconButton(
              onPressed: () {
                print("Notification button clicked");
              },
              icon: Icon(Icons.notification_add_outlined)),
        ],
      ),
      body: Container(
        child: Padding(padding: EdgeInsets.all(10), child: Column()),
      ),
    );
  }
}
