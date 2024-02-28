import 'package:flutter/material.dart';

const color01 = Color.fromARGB(255, 50, 168, 82);
const color02 = Color.fromARGB(255, 54, 103, 153);
const color03 = Color.fromARGB(255, 179, 43, 72);

class Person {
  String? name;
  int? age;
  gender? sex;
  Person(String name, int age, gender sex);
}

class Student extends Person {
  String? school;

  Student(String name, int age, gender sex, String school) : super(name,age,sex);
  void display() {
    print("name: $name, age: $age, gender: $sex, school: $school");
  }
}

enum gender { male, female }
