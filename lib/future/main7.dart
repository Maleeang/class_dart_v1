import 'dart:convert';

void main() {

  String jsonStr = '''
    {
    "albumId": 1,
    "id": 1,
    "title": "accusamus beatae ad facilis cum similique qui sunt",
    "url": "https://via.placeholder.com/600/92c952",
    "thumbnailUrl": "https://via.placeholder.com/150/92c952"
    }
  ''';

  //파싱 기술 1 - Map 변환
  Map<String, dynamic> jsonMap = json.decode(jsonStr);
  jsonMap.forEach((key, value) {
    print("${key} : ${value}");
  });

  //파싱 기술 2 - 클래스 설계
  Photo photo = Photo.fromJson(jsonMap);
  print(photo.albumId);
  print(photo.id);
  print(photo.title);
  print(photo.url);
}

class Photo {
  int albumId;
  int id;
  String title;
  String url;
  String thumbnailUrl;

  Photo.fromJson(Map<String, dynamic> json)
      : albumId = json["albumId"], id = json["id"], title = json["title"], url = json["url"], thumbnailUrl = json["thumbnailUrl"];
}