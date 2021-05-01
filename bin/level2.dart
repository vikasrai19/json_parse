void main() {
  print("Level 2!");
  var val = getData();
  print(val.city);
  print(val.streets[0]);
}

getData() {
  var data = {
    "city": "Mumbai",
    "streets": [
      "address1",
      "address2",
    ],
  };

  return Address.fromJson(data);
}

class Address {
  final String city;
  final List<String> streets;

  Address({this.city, this.streets});

  factory Address.fromJson(addData) {
    var streets = addData['streets'].cast<String>();
    return Address(
      city: addData['city'],
      streets: streets,
    );
  }
}
