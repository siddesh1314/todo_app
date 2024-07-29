import 'dart:ui';

import 'package:flutter/material.dart';
import 'addscreen.dart';

void main() {
  runApp(MaterialApp(
    title: 'to do and to schedule',
    debugShowCheckedModeBanner: true,
    home: MainScreen(),
  ));
}

// void main() {
//   runApp(const MainScreen());
// }

class MainScreen extends StatefulWidget {
  MainScreen({Key? key}) : super(key: key);
  //MainScreen({required this.tasks});
  @override
  State<MainScreen> createState() => _MainScreen();
}

class _MainScreen extends State<MainScreen> {
  //write all variables and functions here
  int i = 0;
  String tasks = '';
  @override
  Widget build(BuildContext context) {
    MediaQuery.of(context).size;
    return MaterialApp(
      title: 'to do and to schedule',
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          toolbarHeight: 55,
          elevation: 0,
          leading: const Padding(
            padding: EdgeInsets.only(left: 14.5),
            child: Icon(Icons.calendar_month_outlined, size: 25),
          ),
          actions: [
            ElevatedButton(
              child: (const Icon(Icons.add_rounded, size: 35)),
              onPressed: () async {
                final newTasks = await Navigator.of(context).push(
                  MaterialPageRoute(builder: (context) => const AddScreen()),
                );
                // Navigator.push(
                //   context,
                //   MaterialPageRoute(builder: (context) => AddScreen()),
                // );
                setState(
                  () => tasks = newTasks,
                );
              },
            )
          ],
        ),
        body: SingleChildScrollView(
          child: Column(
            children: [
              const Align(
                alignment: Alignment.topLeft,
                child: Padding(
                  padding: EdgeInsets.only(top: 12, left: 8),
                  child: Text(
                    'Calendar',
                    style: TextStyle(
                        fontSize: 24,
                        color: Colors.black,
                        fontWeight: FontWeight.w500),
                  ),
                ),
              ),
              const SizedBox(
                height: 200,
              ),
              const Align(
                alignment: Alignment.topLeft,
                child: Padding(
                  padding: EdgeInsets.only(left: 8, bottom: 5),
                  child: Text(
                    'Tasks ',
                    style: TextStyle(
                        fontSize: 24,
                        color: Colors.black,
                        fontWeight: FontWeight.bold),
                  ),
                ),
              ),
              Row(
                children: const [
                  SizedBox(width: 25),
                  Text(
                    '!!!',
                    style: TextStyle(
                      fontSize: 18,
                      color: Colors.blueAccent,
                    ),
                  ),
                  SizedBox(width: 13),
                  Text(
                    'Date',
                    style: TextStyle(
                      fontSize: 18,
                      color: Colors.blueAccent,
                    ),
                  ),
                  SizedBox(width: 12),
                  Text(
                    'Time',
                    style: TextStyle(
                      fontSize: 18,
                      color: Colors.blueAccent,
                    ),
                  ),
                  SizedBox(width: 190),
                  Icon(
                    Icons.grid_view_sharp,
                    color: Colors.blueAccent,
                    size: 19,
                  ),
                  Icon(
                    Icons.view_list_rounded,
                    color: Colors.blueAccent,
                  )
                ],
              ),
              Padding(
                padding: const EdgeInsets.all(7.0),
                child: GridView.count(
                  crossAxisCount: 3,
                  shrinkWrap: true,
                  crossAxisSpacing: 7,
                  mainAxisSpacing: 7,
                  children: [
                    Container(
                      height: 130,
                      width: 130,
                      child: SingleChildScrollView(
                        child: Padding(
                          padding: const EdgeInsets.all(2.0),
                          child: Text(
                            tasks,
                            style: TextStyle(color: Colors.white, fontSize: 14),
                          ),
                        ),
                      ),
                      decoration: const BoxDecoration(
                          color: Color(0xFFDC6060),
                          borderRadius: BorderRadius.only(
                              topLeft: Radius.circular(8),
                              bottomRight: Radius.circular(8))),
                    ),
                    Container(
                      height: 130,
                      width: 130,
                      child: Text(
                        'task1 ',
                        style: TextStyle(color: Colors.white, fontSize: 19),
                      ),
                      color: Color(0xFF40A7E9),
                    ),
                    Container(
                      height: 130,
                      width: 130,
                      child: Text('task1'),
                      color: Color(0xFFE7A255),
                    ),
                    Container(
                      height: 130,
                      width: 130,
                      child: Text('task1'),
                      color: Color(0xFFE1C144),
                    ),
                    Container(
                      height: 130,
                      width: 130,
                      child: Text('task1'),
                      color: Color(0xFF7A55B0),
                    ),
                    Container(
                      height: 130,
                      width: 130,
                      child: Text('task1'),
                      color: Color(0xFF3D55AF),
                    ),
                    Container(
                      height: 130,
                      width: 130,
                      child: Text('task1'),
                      color: Color(0xFFDB80C3),
                    ),
                    Container(
                      height: 130,
                      width: 130,
                      child: Text('task1 '),
                      color: Color(0xFF40A7E9),
                    ),
                    Container(
                      height: 130,
                      width: 130,
                      child: Text('task1'),
                      color: Color(0xFFE7A255),
                    ),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
      // routes: {MyRoutes.addRoute: (context) => AddScreen()},
      //routes: {'/add': (_) => AddScreen()}
    );
  }
}




//red-#DC6060
//blue-#40A7E9
//orange-#E7A255
//yellow-#E1C144
//purple-#7A55B0
//dark blue-#3D55AF
//pink-#DB80C3
//whitegreen-#e9f0ea
//whitered-#f0e9e9,darker-#e6d8d8

