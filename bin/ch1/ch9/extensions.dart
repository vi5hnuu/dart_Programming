String encode(String input) {
  final output = StringBuffer();
  for (final codePoint in input.runes) output.writeCharCode(codePoint + 1);
  return output.toString();
}

extension on String {
  String get encoded {
    return _code(1);
  }

  String get decoded {
    return _code(-1);
  }

  String _code(int step) {
    final output = StringBuffer();
    for (final codePoint in runes) output.writeCharCode(codePoint + step);
    return output.toString();
  }
}

void main(List<String> args) {
  // String s = 'vishnu kumar';
  // print(s.encoded);
  // String de = 'wjtiov!lvnbs';
  // print(de.decoded);

  String s =
      """Uif!tfdsfu!up!mfbsojoh!Ebsu!xfmm!jt!up!dg"ewtkqwu"cpf"lwuv"vt{"vjkpiu0"Vlqfh#|rx*uh#uhdglqj#wklv/#wkdw#reylrxvo|#ghvfulehv#|rx1#Kssh\$nsf%""";
  print(s.decoded);
  print(
      """cf!dvsjpvt!boe!kvtu!usz!uijoht/!Ukpeg"{qw)tg"tgcfkpi"vjku."vjcv"qdxkqwun{"fguetkdgu"{qw0"Jrrg#mre\$"""
          .decoded);
  print("""Tjodf!zpv(sf!sfbejoh!uijt-!uibu!pcwjpvtmz!eftdsjcft!zpv/!Iqqf"lqd#"""
      .decoded);
  print('Hppe!kpc'.decoded);
}
///////////////////////////////////////////////////////
// extension on int {
//   int get cubed {
//     return this * this * this;
//   }
// }

// void main(List<String> args) {
//   int a = 3;
//   print(a.cubed);
// }
//////////////////////////////////////////////////////////
// enum ProgrammingLanguage {
//   dart,
//   swift,
//   javaScript,
// }

// extension on ProgrammingLanguage {
//   bool get isStronglyTyped {
//     switch (this) {
//       case ProgrammingLanguage.dart:
//       case ProgrammingLanguage.swift:
//         return true;
//       case ProgrammingLanguage.javaScript:
//         return false;
//       default:
//         throw Exception('unknown programming language $this');
//     }
//   }
// }

// void main(List<String> args) {
//   final language = ProgrammingLanguage.dart;
//   print(language.isStronglyTyped);
// }
