class Students {
  List<Map<String, String>> people;

  Students(this.people);

  void sort(String field) {
    people.sort((a, b) => (a[field] ?? '').compareTo(b[field] ?? ''));
  }

  void log() {
    for (var person in people) {
      print(person);
    }
  }

  void add(Map<String, String> person) {
    people.add(person);
  }

  void remove(String field) {
    people.removeWhere((person) => person.containsKey(field));
  }
}
