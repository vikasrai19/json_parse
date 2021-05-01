void main() {
  print('Level 4!');
  var val = getData();
  print(val.name);
  print(val.images[0].id);
}

getData() {
  var data = {
    "id": 1,
    "name": "ProductName",
    "images": [
      {
        "id": 11,
        "imageName": "xCh-rhy",
      },
      {
        "id": 31,
        "imageName": "fjs-eun",
      },
    ],
  };

  return Post.fromJson(data);
}

class Image {
  final int id;
  final String imageName;

  Image({this.id, this.imageName});

  factory Image.fromJson(Map<String, dynamic> imgData) {
    return Image(
      id: imgData['id'],
      imageName: imgData['imageName'],
    );
  }
}

class Post {
  final int id;
  final String name;
  final List<Image> images;

  Post({this.id, this.name, this.images});

  factory Post.fromJson(Map<String, dynamic> postData) {
    var imageList = postData['images'] as List;
    var imgList = imageList.map((e) => Image.fromJson(e)).toList();
    return Post(
      id: postData['id'],
      name: postData['name'],
      images: imgList,
    );
  }
}
