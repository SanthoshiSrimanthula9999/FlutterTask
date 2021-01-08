import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:jiffy/jiffy.dart';
import 'package:jiffy/src/enums/units.dart';

void main() async {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Task',
      theme: ThemeData(
        brightness: Brightness.dark,
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  static final DateTime now = DateTime.now();
  static final DateFormat formatter = DateFormat('HH:mm AM');
  final String formatted = formatter.format(now);
  final String currentTime = DateFormat.jm().format(DateTime.now());

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    getTimeZones();
  }

  getTimeZones() async {
    await Jiffy.locale('ar');
    var test = Jiffy().yMMMMEEEEdjm;
    print('hellooo ${test}');
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.only(top: 40.0),
              child: Text(
                'Clock',
                style: TextStyle(fontSize: 30, color: Colors.white),
              ),
            ),
            SizedBox(
              height: 40,
            ),
            Text(
              '${currentTime}',
              style: TextStyle(
                  fontSize: 50,
                  fontWeight: FontWeight.bold,
                  color: Colors.blueAccent),
            ),
            SizedBox(
              height: 10,
            ),
            Text(
              '${now}',
              style: TextStyle(fontSize: 20, color: Colors.white),
            ),
            Padding(
              padding: const EdgeInsets.only(
                  left: 16.0, right: 16.0, top: 8.0, bottom: 8.0),
              child: Container(
                  width: MediaQuery.of(context).size.width,
                  child: Divider(
                    color: Colors.white,
                    thickness: 1,
                    //,
                  )),
            ),
            ListTile(
              title: Text(
                'Paris',
                textScaleFactor: 1.5,
                style: TextStyle(color: Colors.white),
              ),
              trailing: Text(
                'hghdghsdg',
                style: TextStyle(color: Colors.white, fontSize: 50),
              ),
              subtitle: Text(
                'This is subtitle',
                style: TextStyle(color: Colors.white),
              ),
              selected: true,
              onTap: () {},
            ),
          ],
        ),
      ),
      // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}
