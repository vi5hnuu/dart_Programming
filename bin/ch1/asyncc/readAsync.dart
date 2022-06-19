import 'dart:async';
import 'dart:convert';
import 'dart:io';

import 'dart:isolate';

// Future<void> main(List<String> args) async {
//   final file = File('F:/dart_Programming/assets/text.txt');
//   final content = await file.readAsString(encoding: utf8);
//   print(content);
// }

////////////////////////////////////////////////////////////////////////
// Future<void> main(List<String> args) async {
//   final file = File('F:/dart_Programming/assets/text_long.txt');
//   final stream = file.openRead();
//   stream.listen((data) {
//     print(data.length);
//   });
// }

// Future<void> main(List<String> args) async {
//   final file = File('F:/dart_Programming/assets/text_long.txt');
//   final stream = file.openRead();
//   await for (var data in stream) print(data.length);
// }

/////////////////////////////////////////////////////////////////////////////
/////cancelling a stream
// Future<void> main(List<String> args) async {
//   final file = File('F:/dart_Programming/assets/text_long.txt');
//   final stream = file.openRead();
//   StreamSubscription<List<int>>? subscription;
//   subscription = stream.listen(
//       (data) {
//         print(data.length);
//         subscription?.cancel();
//       },
//       cancelOnError: true,
//       onDone: () {
//         print('All finished.');
//       });
// }

////////////////////////////////////////////////////////////////////////////////
void playHideAndseekLongVersion(SendPort port) {
  var counting = 0;
  for (var i = 1; i <= 1000000000; i++) {
    counting = i;
  }
  port.send('$counting! Ready or not, here Icome!');
}

Future<void> main(List<String> args) async {
  final receiveport = ReceivePort();
  final isolate =
      await Isolate.spawn(playHideAndseekLongVersion, receiveport.sendPort);
  receiveport.listen((message) {
    print(message);
    receiveport.close();
    isolate.kill();
  });
}
