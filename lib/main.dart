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
    List<Student> students = initStudents();

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
                      students[0].display();
                    },
                    child: Container(
                      child: Image.asset("assets/man.png"),
                      height: 60.0,
                      padding: EdgeInsets.all(5.0),
                    ),
                  )),
                  Expanded(
                      child: GestureDetector(
                    onTap: () {
                      students[1].display();
                    },
                    child: Container(
                      child: Image.asset("assets/people-female.png"),
                      height: 60.0,
                      padding: EdgeInsets.all(5.0),
                    ),
                  )),
                  Expanded(
                      child: GestureDetector(
                    onTap: () {
                      students[2].display();
                    },
                    child: Container(
                      child: Image.asset("assets/male.png"),
                      height: 60.0,
                      padding: EdgeInsets.all(5.0),
                    ),
                  )),
                ],
              ),
            )
          ],
        ));
  }

  List<Student> initStudents() {
    List<Student> students = [];

    Student john = Student("John", 30, gender.male, "ABC School");
    john.name = 'John';
    john.age = 30;
    john.school = 'ABC School';
    john.sex = gender.male;

    Student mary = Student("Mary", 25, gender.female, "XYZ School");
    mary.name = 'Mary';
    mary.age = 25;
    mary.school = 'XYZ School';
    mary.sex = gender.female;

    Student peter = Student("Peter", 20, gender.male, "DEF School");
    peter.name = 'Peter';
    peter.age = 20;
    peter.school = 'DEF School';
    peter.sex = gender.male;

    students.add(john);
    students.add(mary);
    students.add(peter);

    return students;
  }
}
