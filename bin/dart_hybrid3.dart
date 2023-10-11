import 'package:dart_hybrid3/dart_hybrid3.dart';

import 'dart:convert';

void main() {
  String json = '''
[
  {"first":"John", "last":"Notreal", "age":"52", "email":"john@isnotreal.com"},
  {"first":"Who", "last":"Knows", "age":"10", "email":"whoknows@where.com"},
  {"first":"Peter", "last":"Ventura", "age":"28", "email":"pedroventura@gmail.com"},
  {"first":"Bruno", "last":"Sampaio", "age":"29", "email":"bruno.murta@algonquinlive.com"}
]
  ''';

  List<Map<String, String>> data = (jsonDecode(json) as List)
      .map((item) => Map<String, String>.from(item))
      .toList();
  Students students = Students(data);

  print('JSON List:');
  students.log();

  print('By age:');
  students.sort('age');
  students.log();

  print('Add new person:');
  students
      .add({"first": "Mr", "last": "No Age", "email": "idont@haveanage.com"});
  students.log();

  print('\nRemoving all students with field "age":');
  students.remove('age');
  students.log();
}
