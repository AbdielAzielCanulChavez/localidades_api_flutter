import 'dart:convert';


class Post{
  String id;
  String descripcion;

  Post({this.id, this.descripcion});

  factory Post.fromJson(Map<String,dynamic> json) => Post(
    id: ((json["id"]).toString() != null && (json["id"]).toString() != "") ? (json['id']).toString() : (json['id']).toString(), descripcion: json["descripcion"],
  );

  Map<String, dynamic> toJson() => {
      "id": id,
      "descripcion" : descripcion
    };




}

List<Post> postFromJson(String strJson){
  final str = json.decode(strJson);
  return List<Post>.from(str.map((item){
    print(item);
    return Post.fromJson(item);
  }));
}

String postToJson(Post data){
  final dyn = data.toJson();
  return json.encode(dyn);
}