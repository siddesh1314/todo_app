import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'main.dart';
//import 'package:intl/intl.dart';
//import 'package:clock/clock.dart';

class AddScreen extends StatefulWidget {
  const AddScreen({Key? key}) : super(key: key);

  @override
  State<AddScreen> createState() => _AddScreenState();
}

class _AddScreenState extends State<AddScreen> {
  var icon_value = 0;
  String tasks = '', priority = '', time2c = '';
  int i = 0;
  DateTime dateTime = DateTime.now();
  var formatedDate;
  var arrtasks = [
    'a',
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('Add Task'),
        ),
        body: SingleChildScrollView(
          child: Center(
            child: Column(children: [
              const SizedBox(height: 50),
              Container(
                width: 370,
                child: TextField(
                  decoration: const InputDecoration(
                    label: Text("TASK"),
                    labelStyle: TextStyle(fontSize: 20),
                    hintText: "Enter Task",
                    enabledBorder: OutlineInputBorder(
                        borderSide:
                            BorderSide(width: 2, color: Color(0xFF3D55AF))),
                    focusedBorder: OutlineInputBorder(
                        borderSide:
                            BorderSide(width: 2, color: Color(0xFF40A7E9))),
                  ),
                  onChanged: (value) {
                    tasks = value;
                    print(tasks);
                  },
                ),
              ),
              SizedBox(height: 15),
              Container(
                width: 370,
                child: TextField(
                  decoration: InputDecoration(
                      hintText: "Enter due date",
                      enabledBorder: OutlineInputBorder(
                          borderSide: BorderSide(color: Color(0xFF7e3e9e))),
                      focusedBorder: OutlineInputBorder(
                          borderSide:
                              BorderSide(width: 2, color: Color(0xFF7e3e9e))),
                      suffixIcon: ElevatedButton(
                          style: ButtonStyle(),
                          child: const Icon(Icons.calendar_month_rounded),
                          onPressed: () {
                            (icon_value == 0) ? icon_value = 1 : icon_value = 0;
                            setState(() {});
                          })),
                ),
              ),
              Container(
                height: (icon_value == 1) ? 200 : 0,
                child: (icon_value == 1)
                    ? CupertinoDatePicker(
                        mode: CupertinoDatePickerMode.date,
                        initialDateTime: dateTime,
                        onDateTimeChanged: (value) => {
                          setState(() => {
                                dateTime = value,
                                formatedDate =
                                    '${dateTime.day.toString()}/${dateTime.month.toString()}',
                                //DateFormat('DD/MM/YYYY').format(dateTime),
                              }),
                        },
                      )
                    : const SizedBox(),
              ),
              SizedBox(height: 15),
              Container(
                width: 370,
                child: TextField(
                  decoration: const InputDecoration(
                    hintText: "Enter priority",
                    enabledBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: Color(0xFF7e3e9e))),
                    focusedBorder: OutlineInputBorder(
                        borderSide:
                            BorderSide(width: 2, color: Color(0xFF7e3e9e))),
                  ),
                  onChanged: (value) {
                    priority = value;
                    print(priority);
                  },
                ),
              ),
              SizedBox(height: 15),
              Container(
                width: 370,
                child: TextField(
                  decoration: const InputDecoration(
                    hintText: "Enter required time",
                    enabledBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: Color(0xFF7e3e9e))),
                    focusedBorder: OutlineInputBorder(
                        borderSide:
                            BorderSide(width: 2, color: Color(0xFF7e3e9e))),
                  ),
                  onChanged: (value) {
                    time2c = value;
                    print(time2c);
                  },
                ),
              ),
              ElevatedButton(
                child: const Text(
                  'Add task',
                  style: TextStyle(color: Colors.black),
                ),
                onPressed: () {
                  arrtasks[0] = priority +
                      ' || ' +
                      time2c +
                      '             ' +
                      formatedDate +
                      '\n\n' +
                      tasks;
                  // Navigator.pop(
                  //   context,);
                  Navigator.of(context).pop(arrtasks[0]);
                  i = i + 1;
                  // Navigator.of(context).pop(formatedDate);
                  //trial = tasks[0];
                },
              ),
              ElevatedButton(
                child: const Text('back'),
                onPressed: () {
                  Navigator.pop(
                    context,
                  );
                },
              ),
              ElevatedButton(
                child: const Text('try me'),
                onPressed: () {
                  print(arrtasks[0] = tasks + '' + formatedDate);
                },
              )
            ]),
          ),
        ));
  }
}
