import 'package:hybrid_3/hybrid_3.dart' as hybrid_3;
import 'dart:convert';

void main(List<String> arguments) {
  String json = '''
    [
      {"first":"Steve", "last":"Griffith", "email":"griffis@algonquincollege.com"},
      {"first":"Adesh", "last":"Shah", "email":"shaha@algonquincollege.com"},
      {"first":"Tony", "last":"Davidson", "email":"davidst@algonquincollege.com"},
      {"first":"Adam", "last":"Robillard", "email":"robilla@algonquincollege.com"}
    ]
    ''';

  List<Map<String, String>> people = (jsonDecode(json) as List)
      .map((item) => Map<String, String>.from(item))
      .toList();

  hybrid_3.Students students = hybrid_3.Students(people);

  students.sort('first');
  students.plus(
      {"first": "Juneid", "last": "Gaffar", "email": "Gjuneid@gmail.com"});
  students.remove("Adesh");
  students.output();
}
