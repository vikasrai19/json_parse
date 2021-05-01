void main() {
  print('Level 5!');
  var val = getData();
  print(val.albums[0].url);
}

getData() {
  var data = [
    {
      "albumId": 1,
      "id": 1,
      "title": "accusamus beatae ad facilis cum similique qui sunt",
      "url": "http://placehold.it/600/92c952",
      "thumbnailUrl": "http://placehold.it/150/92c952"
    },
    {
      "albumId": 1,
      "id": 2,
      "title": "reprehenderit est deserunt velit ipsam",
      "url": "http://placehold.it/600/771796",
      "thumbnailUrl": "http://placehold.it/150/771796"
    },
    {
      "albumId": 1,
      "id": 3,
      "title": "officia porro iure quia iusto qui ipsa ut modi",
      "url": "http://placehold.it/600/24f355",
      "thumbnailUrl": "http://placehold.it/150/24f355"
    },
  ];

  return AlbumList.fromJson(data);
}

class AlbumList {
  final List<Album> albums;

  AlbumList({this.albums});

  factory AlbumList.fromJson(List<dynamic> albumListData) {
    var album = albumListData.map((e) => Album.fromJson(e)).toList();

    return AlbumList(
      albums: album,
    );
  }
}

class Album {
  final int albumid;
  final int id;
  final String title;
  final String url;
  final String thumbnailurl;

  Album({this.albumid, this.id, this.title, this.url, this.thumbnailurl});

  factory Album.fromJson(Map<String, dynamic> albumData) {
    return Album(
      albumid: albumData['albumId'],
      id: albumData['id'],
      title: albumData['title'],
      url: albumData['url'],
      thumbnailurl: albumData['thumbnailUrl'],
    );
  }
}
