import 'package:flutter/material.dart';
import 'package:native_test1/data.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: Scaffold(
        body: AppTree(),
      ),
    );
  }
}

class AppTree extends StatelessWidget {
  const AppTree({super.key});

  @override
  Widget build(BuildContext context) {
    // List<Student> students = initStudents();

    return Container(
        margin: EdgeInsets.only(top: 20.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              child: Row(
                children: [
                  Expanded(
                      child: GestureDetector(
                    onTap: () {
                      // students[0].display();
                    },
                    child: Container(
                      height: 60.0,
                      color: color01,
                      padding: EdgeInsets.all(5.0),
                    ),
                  )),
                  Expanded(
                      child: GestureDetector(
                    onTap: () {
                      // students[1].display();
                    },
                    child: Container(
                      height: 60.0,
                      color: color02,
                      padding: EdgeInsets.all(5.0),
                    ),
                  )),
                  Expanded(
                      child: GestureDetector(
                    onTap: () {
                      // students[2].display();
                    },
                    child: Container(
                      height: 60.0,
                      color: color03,
                      padding: EdgeInsets.all(5.0),
                    ),
                  )),
                ],
              ),
            )
          ],
        ));
  }

  // List<Student> initStudents() {
  //   List<Student> students = [];

  //   Student john = Student();
  //   john.name = 'John';
  //   john.age = 30;
  //   john.school = 'ABC School';

  //   Student mary = Student();
  //   mary.name = 'Mary';
  //   mary.age = 25;
  //   mary.school = 'XYZ School';

  //   Student peter = Student();
  //   peter.name = 'Peter';
  //   peter.age = 20;
  //   peter.school = 'DEF School';

  //   students.add(john);
  //   students.add(mary);
  //   students.add(peter);

  //   return students;
  // }
}
