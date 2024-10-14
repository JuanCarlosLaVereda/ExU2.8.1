import 'dart:io';
import 'package:http/http.dart' as http;
import 'dart:convert' as convert;

void main(List<String> args) async{
  String photos = "https://jsonplaceholder.typicode.com/photos";
  String posts = "https://jsonplaceholder.typicode.com/posts";
  String todos = "https://jsonplaceholder.typicode.com/todos";
  String espciador = "********************************************************************************************************";

/*  //getters
  try{
    await GET(posts);
    print(espciador);
    //await GET(photos);
    print(espciador);
    //await GET(todos);
  } catch (e){
    print(e);
  }*/

/*  //posts
  try{
    await POSTposts(posts);
    print(espciador);
    await POSTtodos(todos);
    print(espciador);
    await POSTphotos(photos);
    print(espaciador);
  } catch (e){
    print(e);
  }*/

/*  //puts
  try{
    await PUTposts(posts);
    print(espciador);
    await PUTtodos(todos);
    print(espciador);
    await PUTphotos(photos);
    print(espciador);
  } catch(e){
    print(e);
  }*/


}

GET(String link) async{
  var url = Uri.parse(link);

  var respuesta = await http.get(url);

  if (respuesta.statusCode == 200){
    print(respuesta.body);
  } else{
    print("Something went wrong, code error: ${respuesta.statusCode}");
  }
}

POSTposts(String link) async{
  var url = Uri.parse(link);

  Map mapBody = {"userId": 101, "id": 33, "tittle": "Que numerin", "body": "aut et excepturi dicta laudantium sint rerum nihil\nlaudantium et at\na neque minima officia et similique libero et\ncommodi voluptate qui"};

  Map<String, String> headers = {'Content-Type':
  'application/json'};

  String body = convert.jsonEncode(mapBody);

  var respuesta = await http.post(url, headers: headers, body: body);

  if (respuesta.statusCode == 200 || respuesta.statusCode == 201){
    print(respuesta.body);
  } else{
    print("Something went wrong, code error: ${respuesta.statusCode}");
  }
}

POSTtodos(String link) async{
  var url = Uri.parse(link);

  Map mapBody = {"userId": 1, "id": 333, "tittle": "Que numerin", "completed": "true"};

  Map<String, String> headers = {'Content-Type':
  'application/json'};

  String body = convert.jsonEncode(mapBody);

  var respuesta = await http.post(url, headers: headers, body: body);

  if (respuesta.statusCode == 200 || respuesta.statusCode == 201){
    print(respuesta.body);
  } else{
    print("Something went wrong, code error: ${respuesta.statusCode}");
  }
}

POSTphotos(String link) async{
  var url = Uri.parse(link);

  Map mapBody = {"albumId": 1, "id": 333, "tittle": "Que numerin", "url": "url", "thumbnailUrl": "thumbnailUrl"};

  Map<String, String> headers = {'Content-Type':
  'application/json'};

  String body = convert.jsonEncode(mapBody);

  var respuesta = await http.post(url, headers: headers, body: body);

  if (respuesta.statusCode == 200 || respuesta.statusCode == 201){
    print(respuesta.body);
  } else{
    print("Something went wrong, code error: ${respuesta.statusCode}");
  }
}

PUTposts(String link) async{
  var url = Uri.parse(link);

  Map mapBody = {"userId": 1, "id": 1, "tittle": "Que numerin", "completed": "true"};
  Map<String, String> headers = {'Content-Type':
  'application/json'};

  String body = convert.jsonEncode(mapBody);

  var respuesta = await http.put(url, headers: headers, body: body);

  if(respuesta.statusCode == 200 || respuesta.statusCode == 201){
    print(respuesta.body);
  } else{
    print("Something went wrong, code error: ${respuesta.statusCode}");
  }
}

PUTtodos(String link) async{
  var url = Uri.parse(link);
  Map mapBody = {"userId": 1, "id": 1, "tittle": "Que numerin", "body": "aut et excepturi dicta laudantium sint rerum nihil\nlaudantium et at\na neque minima officia et similique libero et\ncommodi voluptate qui"};

  Map<String, String> headers = {'Content-Type':
  'application/json'};

  String body = convert.jsonEncode(mapBody);

  var respuesta = await http.put(url, headers: headers, body: body);

  if(respuesta.statusCode == 200 || respuesta.statusCode == 201){
    print(respuesta.body);
  } else{
    print("Something went wrong, code error: ${respuesta.statusCode}");
  }
}

PUTphotos(String link) async{
  var url = Uri.parse(link);
  Map mapBody = {"albumId": 1, "id": 1, "tittle": "Que numerin", "url": "url", "thumbnailUrl": "thumbnailUrl"};

  Map<String, String> headers = {'Content-Type':
  'application/json'};

  String body = convert.jsonEncode(mapBody);

  var respuesta = await http.put(url, headers: headers, body: body);

  if(respuesta.statusCode == 200 || respuesta.statusCode == 201){
    print(respuesta.body);
  } else{
    print("Something went wrong, code error: ${respuesta.statusCode}");
  }
}

