//method-1
// void main(List<String> args) {
//   print('Hey');
//   final myfuture = Future<int>.delayed(const Duration(seconds: 3), () => 42);
//   myfuture
//       .then((value) => print(value))
//       .catchError((error) => print('Error $error'))
//       .whenComplete(() => print('Future is completed.'));
//   print('Done');
// }

//method-2
// Future<void> abc() async {
//   final value = await Future<int>.delayed(const Duration(seconds: 3), () => 42);
//   print('value :$value');
// }

// Future<void> main(List<String> args) async {
//   print('Hey');
//   abc();
//   print('Done');
// }

/////////////////////////////////////////////////////////////
// Future<void> abc() async {
//   try {
//     final value =
//         await Future<int>.delayed(const Duration(seconds: 3), () => 42);
//         // throw Exception('There was an error');
//         print('value :$value');
//   } catch (error) {
//     print(error);
//   } finally {
//     print('future done');
//   }
// }

// Future<void> main(List<String> args) async {
//   print('Hey');
//   abc();
//   print('Done');
// }
/////////////////////////////////////////////////////////////
import 'dart:convert';
import 'dart:io';
import 'package:http/http.dart' as http;

class ToDo {
  ToDo(
      {required this.userId,
      required this.id,
      required this.title,
      required this.completed});
  factory ToDo.fromJson(Map<String, Object?> jsonMap) {
    return ToDo(
        userId: jsonMap['userId'] as int,
        id: jsonMap['id'] as int,
        title: jsonMap['title'] as String,
        completed: jsonMap['completed'] as bool);
  }
  final int userId;
  final int id;
  final String title;
  final bool completed;

  @override
  String toString() {
    return 'userId: $userId\n'
        'id: $id\n'
        'title: $title\n'
        'completed: $completed';
  }
}

Future<void> main(List<String> args) async {
  final url = 'https://jsonplaceholder.typicode.com/todos/1';
  final parseUrl = Uri.parse(url);
  final response = await http.get(parseUrl);
  final statusCode = response.statusCode;
  if (statusCode == 200) {
    final rawJsonString = response.body;
    final jsonMap = jsonDecode(rawJsonString);
    final toDo = ToDo.fromJson(jsonMap);
    print(toDo);
  } else {
    throw HttpException('$statusCode');
  }
}
