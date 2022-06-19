void main() {
  var stream = StringBuffer('My name is vishnu kumar');
  stream.writeln('And i am from rajasthan');
  stream.writeAll(['bye', 'bye']);
  print(stream); //implicit toString called
  print(stream.toString());
  print(123456.toStringAsFixed(2));

  //raw string
  const rawString = r'My name is vishnu\n\n\n\n$stream';
  print(rawString);

  print('vishnu' * 3);
}
