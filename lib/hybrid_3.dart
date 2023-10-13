class Students {
  List<Map<String, String>> people;

  Students(this.people);

  void sort(String field) {
    people.sort((a, b) => a[field]!.compareTo(b[field]!));
  }

  void plus(Map<String, String> person) {
    people.add(person);
  }

  void output() {
    for (var person in people) {
      print(person);
    }
  }

  void remove(String field) {
    people.removeWhere((person) => person.containsValue(field));
  }
}
