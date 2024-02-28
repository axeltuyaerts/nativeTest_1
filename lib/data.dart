import 'package:flutter/material.dart';

const color01 = Color.fromARGB(255, 50, 168, 82);
const color02 = Color.fromARGB(255, 54, 103, 153);
const color03 = Color.fromARGB(255, 179, 43, 72);

class Person {
  String? name;
  int? age;
}

class Student extends Person{
  String? school;
  void display(){
    print("name: $name, age: $age, school: $school");
  } 
}
