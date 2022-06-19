enum Grade { A, B, C, D, E, F }

// class Person {
//   String givenName;
//   String surName;
//   Person(this.givenName, this.surName);
//   String get fullName => '$givenName $surName';

//   @override
//   String toString() => fullName;
// }

// class Student {
//   String givenName;
//   String surName;
//   Student(this.givenName, this.surName);
//   var grades = <Grade>[];
//   String get fullName => '$givenName $surName';
//   @override
//   String toString() {
//     return fullName;
//   }
// }

/////////////////////////////////////////////////////////////
// class Person {
//   String givenName;
//   String surName;
//   Person(this.givenName, this.surName);
//   String get fullName => '$givenName $surName';

//   @override
//   String toString() => fullName;
// }

// class Student extends Person {
//   var grades = <Grade>[];
//   Student(String givenName, String surName) : super(givenName, surName);
//   @override
//   String get fullName => '$surName, $givenName';
// }

// class SchoolBandMember extends Student {
//   SchoolBandMember(String givenName, String surName)
//       : super(givenName, surName);
//   static const MinimumPracticeTime = 2;
// }

// class StudentAthelete extends Student {
//   StudentAthelete(String givenName, String surName) : super(givenName, surName);
//   bool get isEligible => grades.every((grade) => grade != Grade.F);
// }

// void main() {
//   final jon = Person('Jon', 'Snow');
//   final jane = Student('Jane', 'Snow');
//   print(jon.fullName);
//   print(jane.fullName);

//   final jessie = SchoolBandMember('Jessie', 'Jones');
//   final marty = StudentAthelete('Marty', 'McFly');
//   final students = [jessie, jane, marty];
//   print(jessie is Object);
//   print(jessie is Person);
//   print(jessie is Student);
//   print(jessie is SchoolBandMember);
//   print(jessie is! StudentAthelete);
// }
/////////////////////////////////////////////////////////////
// class A {
//   A() {
//     print('A ctor');
//   }
// }

// class B extends A {
//   B() {
//     print('B ctor');
//   }
// }

// void main(List<String> args) {
//   B a = B();
//   A aa = B();
// }
/////////////////////////////////////////////////////////////
// abstract class Animal {
//   bool isAlive = true;
//   void eat();
//   void move();

//   @override
//   String toString() {
//     return "I'm a $runtimeType";
//   }
// }

// class Platypus extends Animal {
//   @override
//   void eat() {
//     print('Munch munch');
//   }

//   @override
//   void move() {
//     print('Glide glide');
//   }

//   void layEggs() {
//     print('Plop plop');
//   }
// }
// void main(List<String> args) {
//   // final platypus = Platypus();
//   // print(platypus.isAlive);
//   // platypus.eat();
//   // platypus.move();
//   // platypus.layEggs();
//   // print(platypus);

//   final Animal platypus = Platypus();
//   print(platypus.isAlive);
//   platypus.eat();
//   platypus.move();
//   // platypus.layEggs();
//   (platypus as Platypus).layEggs();
//   print(platypus);
// }
/////////////////////////////////////////////////////////////
// abstract class DataRepository {
//   double? fetchTemperature(String city);
//   factory DataRepository() => FakeWebServer();
// }

// class FakeWebServer implements DataRepository {
//   @override
//   double? fetchTemperature(String city) {
//     return 42.0;
//   }
// }

// void main(List<String> args) {
//   final repository = DataRepository();
//   final temprature = repository.fetchTemperature('xyz');
//   print(temprature);
// }
/////////////////////////////////////////////////////////////
// class AnotherClass {
// int myField = 42;
// void myMethod() => print(myField);
// }
// class SomeClass extends AnotherClass {}
// void main(List<String> args) {
//   final someClass = SomeClass();
//   print(someClass.myField);
//   someClass.myMethod();
// }

class AnotherClass {
  int myField = 42;
  void myMethod() => print(myField);
}

class SomeClass implements AnotherClass {
  @override
  int myField = 0;
  @override
  void myMethod() {
    print(myField);
  }
}

void main(List<String> args) {
  final someClass = SomeClass();
  print(someClass.myField);
  someClass.myMethod();
}
/////////////////////////////////////////////////////////////

