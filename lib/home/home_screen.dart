import 'package:flutter/material.dart';
import 'package:fluttercrud/domain/Post.dart';
import 'package:fluttercrud/service/api.dart';

class PaginaPrincipal extends StatefulWidget {
  @override
  _PaginaPrincipalState createState() => _PaginaPrincipalState();
}

class _PaginaPrincipalState extends State<PaginaPrincipal> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Crud Flutter")
      ),
      body: SafeArea(
        child: FutureBuilder(
          future: getPosts(),
          builder: (context, snapshot){
            if(snapshot.hasError){
              return Center(
                child: Text(snapshot.error.toString())
              );
            } else if(snapshot.connectionState == ConnectionState.done){
              var response = snapshot.data as List<Post>;
              return ListView.builder(
                itemCount: response.length,
                itemBuilder: (context, position){
                  var postItem = response[position];
                  return Card(
                    child: Column(
                      children: <Widget>[
                        Text(postItem.descripcion, style: Theme.of(context).textTheme.title,),
                        Text(postItem.id, style: Theme.of(context).textTheme.subtitle1,),
                      ],
                    ),
                  );
                },
              );
              return Center(
                child: Text("Success")
              );
            } else {
              return Center(
                child: CircularProgressIndicator()
              );
            }
          },
        ),
      ),
    );
  }
}