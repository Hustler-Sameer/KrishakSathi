import 'package:flutter/material.dart';
import 'package:krishaksarthiuat/screens/homeDashBoard1.dart';
import 'package:krishaksarthiuat/screens/homeDashboard.dart';

void main() {
  runApp(const MyApp());
}

// This widget is the root of your application.
class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        theme: ThemeData(
            scaffoldBackgroundColor: Color.fromARGB(255, 255, 255, 255)),
        debugShowCheckedModeBanner: false,
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
                              backgroundColor:
                                  Color.fromARGB(255, 179, 14, 179),
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
          body: homeDashBoard1(),
        ));
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  // This widget is the home page of your application. It is stateful, meaning
  // that it has a State object (defined below) that contains fields that affect
  // how it looks.

  // This class is the configuration for the state. It holds the values (in this
  // case the title) provided by the parent (in this case the App widget) and
  // used by the build method of the State. Fields in a Widget subclass are
  // always marked "final".

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;

  void _incrementCounter() {
    setState(() {
      // This call to setState tells the Flutter framework that something has
      // changed in this State, which causes it to rerun the build method below
      // so that the display can reflect the updated values. If we changed
      // _counter without calling setState(), then the build method would not be
      // called again, and so nothing would appear to happen.
      _counter++;
    });
  }

  @override
  Widget build(BuildContext context) {
    // This method is rerun every time setState is called, for instance as done
    // by the _incrementCounter method above.
    //
    // The Flutter framework has been optimized to make rerunning build methods
    // fast, so that you can just rebuild anything that needs updating rather
    // than having to individually change instances of widgets.
    return Scaffold(
      appBar: AppBar(
        // TRY THIS: Try changing the color here to a specific color (to
        // Colors.amber, perhaps?) and trigger a hot reload to see the AppBar
        // change color while the other colors stay the same.
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        // Here we take the value from the MyHomePage object that was created by
        // the App.build method, and use it to set our appbar title.
        title: Text(widget.title),
      ),
      body: Center(
        // Center is a layout widget. It takes a single child and positions it
        // in the middle of the parent.
        child: Column(
          // Column is also a layout widget. It takes a list of children and
          // arranges them vertically. By default, it sizes itself to fit its
          // children horizontally, and tries to be as tall as its parent.
          //
          // Column has various properties to control how it sizes itself and
          // how it positions its children. Here we use mainAxisAlignment to
          // center the children vertically; the main axis here is the vertical
          // axis because Columns are vertical (the cross axis would be
          // horizontal).
          //
          // TRY THIS: Invoke "debug painting" (choose the "Toggle Debug Paint"
          // action in the IDE, or press "p" in the console), to see the
          // wireframe for each widget.
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            const Text(
              'You have pushed the button this many times:',
            ),
            Text(
              '$_counter',
              style: Theme.of(context).textTheme.headlineMedium,
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: _incrementCounter,
        tooltip: 'Increment',
        child: const Icon(Icons.add),
      ), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}
