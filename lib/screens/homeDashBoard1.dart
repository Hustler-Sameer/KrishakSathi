import 'dart:io';

import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:krishaksarthiuat/screens/cropcuttingdashboard.dart';

class homeDashBoard1 extends StatefulWidget {
  @override
  State<homeDashBoard1> createState() => _homeDashBoard1State();
}

class _homeDashBoard1State extends State<homeDashBoard1> {
  int currentIndex = 0;
  final CarouselController carouselController = CarouselController();

  @override
  Widget build(BuildContext context) {
    double widthAllowed = MediaQuery.of(context).size.width;
    return Scaffold(
      // backgroundColor: const Color.fromARGB(255, 0, 0, 0),
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
        title: Text('Dashboard'),
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
      body: SingleChildScrollView(
        child: Stack(children: [
          Padding(
            padding: const EdgeInsets.fromLTRB(15, 25, 15, 15),
            child: Container(
              decoration: BoxDecoration(
                color: Color.fromARGB(255, 255, 255, 255),
              ),
              width: widthAllowed,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  // const Text('Ganpati Bappa Morya'),
                  Container(
                    padding: const EdgeInsets.fromLTRB(20, 20, 20, 10),
                    child: InkWell(
                      onTap: () {
                        print(currentIndex);
                      },
                      child: CarouselSlider(
                          items: [
                            Container(
                              height: 15,
                              alignment: Alignment.center,
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(15),
                                  image: const DecorationImage(
                                      image:
                                          AssetImage("lib/assets/pmfsby.jpg"),
                                      fit: BoxFit.fill)),
                            ),
                            Container(
                              height: 15,
                              alignment: Alignment.center,
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(15),
                                  image: const DecorationImage(
                                      image: AssetImage(
                                          "lib/assets/PMFBYbanner01.jpeg"),
                                      fit: BoxFit.fill)),
                            ),
                          ],
                          carouselController: carouselController,
                          options: CarouselOptions(
                            scrollPhysics: const BouncingScrollPhysics(),
                            autoPlay: true,
                            aspectRatio: 2,
                            viewportFraction: 1,
                            onPageChanged: (index, reason) {
                              setState(() {
                                currentIndex = index;
                              });
                            },
                          )),
                    ),
                  ),
                  SizedBox(
                    height: 25,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      ElevatedButton(
                        onPressed: () {
                          print('Crop cutting experiment pressed');
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => CCEDashBoard(),
                            ),
                          );
                        },
                        style: ElevatedButton.styleFrom(
                          primary: Colors.blueGrey.shade50,
                          onPrimary: Colors.black,
                          padding: const EdgeInsets.fromLTRB(20, 10, 20, 10),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10.0),
                          ),
                          minimumSize: Size(widthAllowed / 2.8, 0),
                        ),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            ImageIcon(
                              AssetImage('lib/assets/harvesting.png'),
                              size: 70,
                              color: Color(0xFF610361),
                            ),
                            SizedBox(
                                height:
                                    8), // Adjust the spacing between icon and text
                            Text(
                              'Crop Cutting  \n Experiment ',
                              textAlign: TextAlign.center,
                              style: TextStyle(fontSize: 12),
                            ),
                          ],
                        ),
                      ),
                      //2nd row
                      SizedBox(
                        width: 20,
                      ),
                      ElevatedButton(
                        onPressed: () {
                          print('Crop cutting experiment pressed');
                        },
                        style: ElevatedButton.styleFrom(
                          primary: Colors.blueGrey.shade50,
                          onPrimary: Colors.black,
                          padding: const EdgeInsets.fromLTRB(20, 10, 20, 10),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10.0),
                          ),
                          minimumSize: Size(widthAllowed / 2.8, 0),
                        ),
                        child: const Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Icon(
                              Icons.monitor_heart_outlined,
                              size: 70,
                              color: Color(0xFF610361),
                            ),
                            SizedBox(
                                height:
                                    8), // Adjust the spacing between icon and text
                            Text(
                              'Crop Health \n Monitoring',
                              textAlign: TextAlign.center,
                              style: TextStyle(fontSize: 12),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 25,
                  ),
                  // **********************   2nd Row ****************************8
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      ElevatedButton(
                        onPressed: () {
                          print('Crop cutting experiment pressed');
                        },
                        style: ElevatedButton.styleFrom(
                          primary: Colors.blueGrey.shade50,
                          onPrimary: Colors.black,
                          padding: const EdgeInsets.fromLTRB(20, 10, 20, 10),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10.0),
                          ),
                          minimumSize: Size(widthAllowed / 2.8, 0),
                        ),
                        child: const Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Icon(
                              Icons.satellite_alt_outlined,
                              size: 70,
                              color: Color(0xFF610361),
                            ),
                            SizedBox(
                                height:
                                    8), // Adjust the spacing between icon and text
                            Text(
                              'Automatic Weather \n Stations',
                              textAlign: TextAlign.center,
                              style: TextStyle(fontSize: 12),
                            ),
                          ],
                        ),
                      ),
                      SizedBox(
                        width: 20,
                      ),
                      ElevatedButton(
                        onPressed: () {
                          print('Crop cutting experiment pressed');
                        },
                        style: ElevatedButton.styleFrom(
                          primary: Colors.blueGrey.shade50,
                          onPrimary: Colors.black,
                          padding: const EdgeInsets.fromLTRB(20, 10, 20, 10),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10.0),
                          ),
                          minimumSize: Size(widthAllowed / 2.8, 0),
                        ),
                        child: const Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Icon(
                              Icons.list_alt_outlined,
                              size: 70,
                              color: Color(0xFF610361),
                            ),
                            SizedBox(
                                height:
                                    8), // Adjust the spacing between icon and text
                            Text(
                              'Survey Reports  \n',
                              textAlign: TextAlign.center,
                              style: TextStyle(fontSize: 12),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 25,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      ElevatedButton(
                        onPressed: () {
                          print('Crop cutting experiment pressed');
                        },
                        style: ElevatedButton.styleFrom(
                          primary: Colors.blueGrey.shade50,
                          onPrimary: Colors.black,
                          padding: const EdgeInsets.fromLTRB(20, 10, 20, 10),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10.0),
                          ),
                          minimumSize: Size(widthAllowed / 2.8, 0),
                        ),
                        child: const Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Icon(
                              Icons.groups_2,
                              size: 70,
                              color: Color(0xFF610361),
                            ),
                            SizedBox(
                                height:
                                    8), // Adjust the spacing between icon and text
                            Text(
                              'Employee \n  Engagement',
                              textAlign: TextAlign.center,
                              style: TextStyle(fontSize: 12),
                            ),
                          ],
                        ),
                      ),
                    ],
                  )
                ],
              ),
            ),
          ),
          // Positioned(
          //     bottom: 0,
          //     left: 0,
          //     right: 0,
          //     child: Container(
          //       width: MediaQuery.of(context).size.width,
          //       height: MediaQuery.of(context).size.height,
          //       decoration: BoxDecoration(color: Colors.transparent),
          //       child: Row(
          //         mainAxisAlignment: MainAxisAlignment.center,
          //         crossAxisAlignment: CrossAxisAlignment.end,
          //         children: [
          //           FloatingActionButton(
          //               onPressed: () => print('hehe'),
          //               child: Icon(Icons.cloud_download_outlined)),
          //           Text("Data Download Sync")
          //         ],
          //       ),
          //     ))
        ]),
      ),
      // bottomNavigationBar: BottomNavigationBar(
      //   type: BottomNavigationBarType.fixed,
      //   backgroundColor: Color(0xFF610361),
      //   items: [
      //     BottomNavigationBarItem(
      //         icon: Icon(Icons.cloud_download), label: 'Data Download Sync'),
      //     BottomNavigationBarItem(
      //       icon: Icon(
      //         Icons.no_accounts,
      //         color: Color(0xFF610361),
      //       ), // Use a transparent icon or an icon that won't be visible
      //       label: '',
      //     )
      //   ],
      // ),
    );
  }
}
