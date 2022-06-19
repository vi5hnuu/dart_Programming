import 'package:characters/characters.dart';

void main() {
  String name = 'Vishnu kumar';
  print(name);
  print(name.codeUnits);

  const dart = '🎯';
  print(dart.codeUnits);
  print(dart.runes);

  const family = '👨‍👩‍👦‍👦'; //graphime clustor
  print(family
      .codeUnits); //two codeunits is surrogate pair[codeunits outside 64536 split to form surrogate pair]
  print(family.runes); //1 rune(codepoint or single mapping) is combination of codeunits in surrogate pair
  print(family.length);
  print(family.codeUnits.length); //4 surrogate pair+3 ZWJ(Zero width joiner)
  //man + ZWJ + woman + ZWJ + girl + ZWJ + boy.
  print(family.runes.length);
  print(family.characters.length);//characters is extension get property on String class
}
