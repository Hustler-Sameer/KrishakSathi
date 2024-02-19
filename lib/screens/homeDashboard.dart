// import 'dart:io';

// import 'package:flutter/material.dart';
// import 'package:flutter/material.dart';

// class homeDashBoard extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     // TODO: implement build
//     double widthAllowed = MediaQuery.of(context).size.width;
//     return Scaffold(
//         drawer: SafeArea(
//           child: Drawer(
//             child: ListView(
//               padding: EdgeInsets.zero,
//               children: [
//                 Container(
//                   decoration: BoxDecoration(color: Color(0xFF610361)),
//                   child: Column(
//                     mainAxisAlignment: MainAxisAlignment.start,
//                     children: [
//                       Padding(
//                         padding: const EdgeInsets.only(top: 8.0),
//                         child: Image.asset(
//                           'lib/assets/newsbi_logo.png',
//                           fit: BoxFit.fill,
//                           width: 150,
//                           height: 50,
//                         ),
//                       ),
//                       const DrawerHeader(
//                         decoration: BoxDecoration(
//                           color: Color(0xFF610361),
//                         ),
//                         child: UserAccountsDrawerHeader(
//                           accountName: Text(
//                             "Ram Sharma",
//                             textAlign: TextAlign.center,
//                             style: TextStyle(fontSize: 16),
//                           ),
//                           accountEmail: Text("Ram@gmail.com"),
//                           decoration: BoxDecoration(
//                             color: Color(0xFF610361),
//                           ),
//                           currentAccountPictureSize: Size.square(45),
//                           currentAccountPicture: CircleAvatar(
//                             backgroundColor: Color.fromARGB(255, 179, 14, 179),
//                             child: Text(
//                               "R",
//                               style: TextStyle(
//                                   fontSize: 25.0,
//                                   color: Color.fromARGB(255, 0, 0, 0)),
//                             ), //Text
//                           ),
//                         ),
//                       ),
//                     ],
//                   ),
//                 ),
//                 ListTile(
//                   leading: const Icon(Icons.person),
//                   title: const Text("My Profile"),
//                   onTap: () {
//                     print("profile clicked!");
//                     // Navigator.push(
//                     //   context,
//                     //   MaterialPageRoute(
//                     //     builder: (context) => MyProfile(),
//                     //   ),
//                   },
//                 ),
//                 ListTile(
//                   leading: const Icon(Icons.person),
//                   title: const Text("Log Out"),
//                   onTap: () {
//                     print("Logout clicked!");
//                     // Navigator.push(
//                     //   context,
//                     //   MaterialPageRoute(
//                     //     builder: (context) => MyProfile(),
//                     //   ), // Replace SameerPage() with your actual Sameer.dart page class
//                     // );
//                   },
//                 ),
//               ],
//             ),
//           ),
//         ),
//         appBar: AppBar(
//           title: Text('Dashboard'),
//           titleTextStyle: const TextStyle(
//               fontWeight: FontWeight.bold,
//               color: Colors.white,
//               fontSize: 24,
//               letterSpacing: 2),
//           centerTitle: false,
//           backgroundColor: Color(0xFF700C79),
//           actions: [
//             IconButton(
//                 onPressed: () {
//                   print("Search clicked");
//                 },
//                 icon: Icon(Icons.search_outlined)),
//             IconButton(
//                 onPressed: () {
//                   print("Filter button clicked");
//                 },
//                 icon: Icon(Icons.filter_alt_rounded)),
//             IconButton(
//                 onPressed: () {
//                   print("Notification button clicked");
//                 },
//                 icon: Icon(Icons.notification_add_outlined)),
//           ],
//         ),
//         body: Container(
//           decoration: BoxDecoration(
//             color: Color.fromARGB(255, 255, 255, 255),
//           ),
//           width: widthAllowed,
//           child: Column(
//             children: [
//               // const Text('Ganpati Bappa Morya'),
//               Padding(
//                 padding: EdgeInsets.fromLTRB(35, 150, 20, 0),
//                 child: Row(
//                   children: [
//                     Column(
//                       children: [
//                         Container(
//                           height: 120.0,
//                           width: 120.0,
//                           child: FittedBox(
//                             child: FloatingActionButton(
//                               onPressed: () {},
//                               child: Image.asset(
//                                 'lib/assets/harvesting.png',
//                                 color: Colors.white,
//                                 height: 45,
//                               ),
//                               backgroundColor: Color(0xFF700C79),
//                               elevation: 20,
//                             ),
//                           ),
//                         ),
//                         const SizedBox(
//                           height: 35,
//                         ),
//                         Text("Crop Cutting \n Experiment"),
//                       ],
//                     ),
//                     SizedBox(
//                       width: 95,
//                     ),
//                     Column(
//                       children: [
//                         Container(
//                           height: 120.0,
//                           width: 120.0,
//                           child: FittedBox(
//                             child: FloatingActionButton(
//                               onPressed: () {},
//                               child: Image.asset(
//                                 'lib/assets/harvesting.png',
//                                 color: Colors.white,
//                                 height: 45,
//                               ),
//                               backgroundColor: Color(0xFF700C79),
//                               elevation: 20,
//                             ),
//                           ),
//                         ),
//                         const SizedBox(
//                           height: 35,
//                         ),
//                         Text("Crop Health \n Monitoring"),
//                       ],
//                     ),
//                   ],
//                 ),
//               ),
//               // 2nd row
//               Padding(
//                 padding: EdgeInsets.fromLTRB(35, 35, 20, 0),
//                 child: Row(
//                   children: [
//                     Column(
//                       children: [
//                         Container(
//                           height: 120.0,
//                           width: 120.0,
//                           child: FittedBox(
//                             child: FloatingActionButton(
//                               onPressed: () {},
//                               child: Image.asset(
//                                 'lib/assets/harvesting.png',
//                                 color: Colors.white,
//                                 height: 45,
//                               ),
//                               backgroundColor: Color(0xFF700C79),
//                               elevation: 20,
//                             ),
//                           ),
//                         ),
//                         const SizedBox(
//                           height: 35,
//                         ),
//                         Text("     Automatic \nWeather Stations"),
//                       ],
//                     ),
//                     SizedBox(
//                       width: 95,
//                     ),
//                     Column(
//                       children: [
//                         Container(
//                           height: 120.0,
//                           width: 120.0,
//                           child: FittedBox(
//                             child: FloatingActionButton(
//                               onPressed: () {},
//                               child: Icon(Icons.blinds_closed ,  color: Colors.black,),

//                                backgroundColor: Color(0xFF700C79),
//                                  elevation: 20,
//                                 // height: 45,
//                               ),

//                             ),
//                           ),
//                         ),
//                         const SizedBox(
//                           height: 35,
//                         ),
//                         const Text("Survey Report"),
//                       ],
//                     ),
//                   ],
//                 ),
//               ),
//             ],
//           ),
//         ));
//   }
// }

import 'dart:io';

import 'package:flutter/material.dart';

class homeDashBoard extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    double widthAllowed = MediaQuery.of(context).size.width;
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
      body: Stack(children: [
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
                Padding(
                  padding: EdgeInsets.fromLTRB(35, 0, 20, 0),
                  child: Row(
                    children: [
                      Column(
                        children: [
                          Container(
                            height: 100.0,
                            width: 100.0,
                            child: FittedBox(
                              child: FloatingActionButton(
                                onPressed: () {},
                                child: Image.asset(
                                  'lib/assets/harvesting.png',
                                  color: Colors.white,
                                  height: 35,
                                ),
                                backgroundColor: Color(0xFF700C79),
                                elevation: 20,
                              ),
                            ),
                          ),
                          const SizedBox(
                            height: 25,
                          ),
                          Text("Crop Cutting \n Experiment"),
                        ],
                      ),
                      SizedBox(
                        width: 95,
                      ),
                      Column(
                        children: [
                          Container(
                            height: 100.0,
                            width: 100.0,
                            child: FittedBox(
                              child: FloatingActionButton(
                                onPressed: () {},
                                child: Icon(
                                  Icons.monitor_heart,
                                  color: Colors.white,
                                  size: 35,
                                ),
                                backgroundColor: Color(0xFF700C79),
                                elevation: 20,
                              ),
                            ),
                          ),
                          const SizedBox(
                            height: 25,
                          ),
                          Text("Crop Health \n Monitoring"),
                        ],
                      ),
                    ],
                  ),
                ),
                // 2nd row
                Padding(
                  padding: EdgeInsets.fromLTRB(35, 35, 20, 0),
                  child: Row(
                    children: [
                      Column(
                        children: [
                          Container(
                            height: 100.0,
                            width: 100.0,
                            child: FittedBox(
                              child: FloatingActionButton(
                                onPressed: () {},
                                child: Icon(
                                  Icons.satellite_alt_outlined,
                                  color: Colors.white,
                                  size: 35,
                                ),
                                backgroundColor: Color(0xFF700C79),
                                elevation: 20,
                              ),
                            ),
                          ),
                          const SizedBox(
                            height: 25,
                          ),
                          // const SizedBox(
                          //   width: 10,
                          // ),
                          Text("    Automatic \nWeather Stations"),
                        ],
                      ),
                      SizedBox(
                        width: 95,
                      ),
                      Column(
                        children: [
                          Container(
                            height: 100.0,
                            width: 100.0,
                            child: FittedBox(
                              child: FloatingActionButton(
                                onPressed: () {},
                                child: Icon(
                                  Icons.list_alt_outlined,
                                  color: Colors.white,
                                  size: 35,
                                ),
                                backgroundColor: Color(0xFF700C79),
                                elevation: 20,
                              ),
                            ),
                          ),
                          const SizedBox(
                            height: 25,
                          ),
                          const Text("Survey Report \n      "),
                        ],
                      ),
                    ],
                  ),
                ),

                // 3rd row

                Padding(
                  padding: EdgeInsets.fromLTRB(35, 35, 20, 0),
                  child: Row(
                    children: [
                      Column(
                        children: [
                          Container(
                            height: 100.0,
                            width: 100.0,
                            child: FittedBox(
                              child: FloatingActionButton(
                                onPressed: () {},
                                child: Icon(
                                  Icons.groups_2,
                                  color: Colors.white,
                                  size: 35,
                                ),
                                backgroundColor: Color(0xFF700C79),
                                elevation: 20,
                              ),
                            ),
                          ),
                          const SizedBox(
                            height: 25,
                          ),
                          Text("    Employee \n Engagement"),
                        ],
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
        Positioned(
            bottom: 0,
            left: 0,
            right: 0,
            child: Container(
              width: MediaQuery.of(context).size.width,
              height: MediaQuery.of(context).size.height,
              decoration: BoxDecoration(color: Colors.transparent),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.end,
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  FloatingActionButton(
                      onPressed: () => print('hehe'),
                      child: Icon(Icons.cloud_download_outlined)),
                  Text("Data Download Sync")
                ],
              ),
            ))
      ]),
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


// writing a function 