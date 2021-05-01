void main(List<String> arguments) {
  print('Hello world!');
  var val = getData();
  print(val.name);
  print(val.score);
}

getData() {
  var data = {
    "id": "487349",
    "name": "Pooja Bhaumik",
    "score": 1000,
  };

  return Student.fromJson(data);
}

class Student {
  final String id;
  final String name;
  final int score;

  Student({this.id, this.name, this.score});

  factory Student.fromJson(Map<String, dynamic> stData) {
    return Student(
      id: stData['id'],
      name: stData['name'],
      score: stData['score'],
    );
  }
}
