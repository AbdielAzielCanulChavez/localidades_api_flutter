import 'package:fluttercrud/domain/Post.dart';
import 'package:http/http.dart' as http;



Future<List<Post>> getPosts() async{
  final response = await http.get("http://199.192.16.168/api/get_all_localidades");
  return postFromJson(response.body);
}