void main() {
  print("Level 3!");
  var val = getData();
  print(val.shapeName);
  print(val.property.width);
}

getData() {
  var data = {
    "shape_name": "rectangle",
    "property": {
      "width": 5.0,
      "breadth": 10.0,
    },
  };

  return Shape.fromJson(data);
}

class Property {
  final double width;
  final double breadth;

  Property({this.width, this.breadth});

  factory Property.fromJson(Map<String, dynamic> propData) {
    return Property(
      width: propData['width'],
      breadth: propData['breadth'],
    );
  }
}

class Shape {
  final String shapeName;
  final Property property;

  Shape({this.shapeName, this.property});

  factory Shape.fromJson(Map<String, dynamic> shapeData) {
    return Shape(
      shapeName: shapeData['shape_name'],
      property: Property.fromJson(shapeData['property']),
    );
  }
}
