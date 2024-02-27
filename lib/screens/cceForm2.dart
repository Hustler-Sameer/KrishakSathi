import 'package:flutter/material.dart';

class CceForm2 extends StatefulWidget {
  const CceForm2({super.key});

  @override
  _CCEForm2 createState() {
    return _CCEForm2();
  }
}

class _CCEForm2 extends State<CceForm2> {
  final _formKey = GlobalKey<FormState>();

  String? YearDropDownValue;
  var yearDropDownItems = [
    '2024',
    '2023',
  ];

  String? SeasonDropDownValue;
  var SeasonDropDownItems = [
    'Kharif',
    'Rabi',
  ];

  String? selectedState;
  String? selectedDistrict;

  @override
  Widget build(BuildContext context) {
    // Build a Form widget using the _formKey created above.
    return MaterialApp(
      home: Scaffold(
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
        body: SafeArea(
          child: SingleChildScrollView(
            child: Padding(
              padding: const EdgeInsets.all(28.0),
              child: Form(
                key: _formKey,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          'Crop Cutting Experiment(CCE) Form-1 Part Two',
                          style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 15,
                              color: Colors.purple.shade900),
                        ),
                      ],
                    ),
                    Container(
                      decoration: const BoxDecoration(
                          border: Border(
                              bottom: BorderSide(
                                  color: Color.fromARGB(54, 0, 0, 0),
                                  width: 1.5))),
                    ),
                    SizedBox(
                      height: 15,
                    ),
                    InputDecorator(
                      decoration: const InputDecoration(
                          border: OutlineInputBorder(),
                          fillColor: Colors.white),
                      child: DropdownButtonHideUnderline(
                        child: DropdownButton(
                            isExpanded: true,
                            hint: Text('Select Year'),
                            value: YearDropDownValue,
                            items: yearDropDownItems.map((String items) {
                              return DropdownMenuItem(
                                value: items,
                                child: Text(items),
                              );
                            }).toList(),
                            onChanged: (String? newValue) {
                              setState(() {
                                YearDropDownValue = newValue;
                                // setting the value of year selected
                              });
                            }),
                      ),
                    ),
                    DropdownButton(
                        isExpanded: true,
                        hint: Text('Select Season'),
                        value: SeasonDropDownValue,
                        items: SeasonDropDownItems.map((String items) {
                          return DropdownMenuItem(
                            value: items,
                            child: Text(items),
                          );
                        }).toList(),
                        onChanged: (String? newValue) {
                          setState(() {
                            SeasonDropDownValue = newValue;
                            // setting the value of year selected
                          });
                        }),
                    // DropdownButton<String>(
                    //     isExpanded: true,
                    //     hint: Text('Select State'),
                    //     value: selectedState,
                    //     items: states.map((String items) {
                    //       return DropdownMenuItem<String>(
                    //         value: items,
                    //         child: Text(items),
                    //       );
                    //     }).toList(),
                    //     onChanged: (String? newValue) {
                    //       setState(() {
                    //         selectedState = newValue;
                    //         // setting the value of year selected
                    //       });
                    //     }),
                    // DropdownButton<String>(
                    //     isExpanded: true,
                    //     hint: Text('Select District'),
                    //     value: selectedDistrict,
                    //     items: (selectedState != null
                    //         ? districtMap[selectedState!]!
                    //             .map((String district) {
                    //             return DropdownMenuItem<String>(
                    //               value: district,
                    //               child: Text(district),
                    //             );
                    //           }).toList()
                    //         : []),
                    //     onChanged: (String? newValue) {
                    //       setState(() {
                    //         selectedDistrict = newValue;
                    //       });
                    //     }),
                    // // notified crop name
                    // DropdownButton<String>(
                    //     isExpanded: true,
                    //     hint: Text('Select Notified Crop Name'),
                    //     value: selectedDistrict,
                    //     items: [],
                    //     //  (selectedState != null
                    //     //     ? districtMap[selectedState!]!.map((String district) {
                    //     //         return DropdownMenuItem<String>(
                    //     //           value: district,
                    //     //           child: Text(district),
                    //     //         );
                    //     //       }).toList()
                    //     //     : []),
                    //     onChanged: (String? newValue) {
                    //       setState(() {
                    //         // selectedDistrict = newValue;
                    //         print('Notified crop selected');
                    //       });
                    //     }),

                    // Select Level 4 Dropdown
                    DropdownButton<String>(
                        isExpanded: true,
                        hint: Text('Select Level 4(Tehsil/Sub-Division/Block)'),
                        value: selectedDistrict,
                        items: [],
                        //  (selectedState != null
                        //     ? districtMap[selectedState!]!.map((String district) {
                        //         return DropdownMenuItem<String>(
                        //           value: district,
                        //           child: Text(district),
                        //         );
                        //       }).toList()
                        //     : []),
                        onChanged: (String? newValue) {
                          setState(() {
                            // selectedDistrict = newValue;
                            print('Notified crop selected');
                          });
                        }),
                    // Select Level 5

                    DropdownButton<String>(
                        isExpanded: true,
                        hint: Text(
                            'Select Level 5(Block/Girdawar-Circle/Gram Panchayat)'),
                        value: selectedDistrict,
                        items: [],
                        //  (selectedState != null
                        //     ? districtMap[selectedState!]!.map((String district) {
                        //         return DropdownMenuItem<String>(
                        //           value: district,
                        //           child: Text(district),
                        //         );
                        //       }).toList()
                        //     : []),
                        onChanged: (String? newValue) {
                          setState(() {
                            // selectedDistrict = newValue;
                            print('Notified crop selected');
                          });
                        }),
                    // Select Level 6
                    DropdownButton<String>(
                        isExpanded: true,
                        hint: Text('Select Level 6(Gram Panchayat)'),
                        value: selectedDistrict,
                        items: [],
                        //  (selectedState != null
                        //     ? districtMap[selectedState!]!.map((String district) {
                        //         return DropdownMenuItem<String>(
                        //           value: district,
                        //           child: Text(district),
                        //         );
                        //       }).toList()
                        //     : []),
                        onChanged: (String? newValue) {
                          setState(() {
                            // selectedDistrict = newValue;
                            print('Notified crop selected');
                          });
                        }),
                    TextFormField(
                      initialValue: 'Enter Village Name',
                      decoration: const InputDecoration(
                          border: OutlineInputBorder(
                              borderSide:
                                  BorderSide(width: 1.5, color: Colors.black))),
                      // The validator receives the text that the user has entered.
                      validator: (value) {
                        if (value == null || value.isEmpty) {
                          return 'Please enter some text';
                        }
                        return null;
                      },
                    ),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.end,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Padding(
                          padding: const EdgeInsets.symmetric(vertical: 16),
                          child: ElevatedButton(
                            style: ElevatedButton.styleFrom(
                                primary: Color(0xFF610361)),
                            onPressed: () {
                              // Validate returns true if the form is valid, or false otherwise.
                              if (_formKey.currentState!.validate()) {
                                // If the form is valid, display a snackbar. In the real world,
                                // you'd often call a server or save the information in a database.
                                ScaffoldMessenger.of(context).showSnackBar(
                                  const SnackBar(
                                      content: Text('Processing Data')),
                                );
                              }
                              // Navigator.push(
                              //   context,
                              //   // MaterialPageRoute(
                              //   //     builder: (context) => MyCustomForm2()
                              //   //     // CCEDashBoard(),
                              //   //     ),
                              // );
                            },
                            child: const Text('Submit'),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
