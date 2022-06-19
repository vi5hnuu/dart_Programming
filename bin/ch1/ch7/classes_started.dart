// class User {
//   int id;
//   String name;

//   User(this.id, this.name);

//   User.VIP() : this(0, 'VIP person');
//   String toJson() {
//     return '{"id":$id,"name":"$name"}';
//   }

//   @override
//   String toString() {
//     return 'Id :$id name :$name';
//   }
// }

// void main() {
//   final user = User.VIP();
//   print(user);
// }

import 'dart:collection';

///////////////////////////////////////////
// class User {
//   int id;
//   String name;

//   User({required this.id,required this.name});

//   User.VIP() : this(id:0, name:'VIP person');
//   String toJson() {
//     return '{"id":$id,"name":"$name"}';
//   }

//   @override
//   String toString() {
//     return 'Id :$id name :$name';
//   }
// }

// void main() {
//   final user = User.VIP();
//   print(user);
// }
///////////////////////////////////////////
// class User {
//   int? _id;
//   String? _name;

//   User({required int id, required String name}) {
//     this._id = id;
//     this._name = name;
//   }

//   User.VIP() : this(id: 0, name: 'VIP person');
//   String toJson() {
//     return '{"id":$_id,"name":"$_name"}';
//   }

//   @override
//   String toString() {
//     return 'Id :$_id name :$_name';
//   }
// }

// void main() {
//   final user = User.VIP();
//   print(user);
// }
///////////////////////////////////////////
// class User {
//   int _id;
//   String _name;

//   User({required int id, required String name}):this._id=id,this._name=name;

//   User.VIP() : this(id: 0, name: 'VIP person');
//   String toJson() {
//     return '{"id":$_id,"name":"$_name"}';
//   }

//   @override
//   String toString() {
//     return 'Id :$_id name :$_name';
//   }
// }

// void main() {
//   final user = User.VIP();
//   print(user);
// }
///////////////////////////////////////////
// class User {
//   int _id;
//   String _name;

//   User({required int id, required String name}):assert(id>=0),assert(name.isNotEmpty),this._id=id,this._name=name;

//   User.VIP() : this(id: 0, name: 'VIP person');
//   String toJson() {
//     return '{"id":$_id,"name":"$_name"}';
//   }

//   @override
//   String toString() {
//     return 'Id :$_id name :$_name';
//   }
// }

// void main() {
//   final user = User.VIP();
//   print(user);
// }
///////////////////////////////////////////
///why private is not private
///using an underscore before a
// variable or method name makes it library private, not class
// private.
// class User {
//   int _id;
//   String _name;

//   User({required int id, required String name})
//       : this._id = id,
//         this._name = name;

//   User.VIP() : this(id: 0, name: 'VIP person');
//   String toJson() {
//     return '{"id":$_id,"name":"$_name"}';
//   }

//   @override
//   String toString() {
//     return 'Id :$_id name :$_name';
//   }
// }

// void main() {
//   final user = User.VIP();
//   print(user);
//   print(user._id);
//   user._id = 56;
//   print(user._id);
// }
///////////////////////////////////////////////
// class User {
//   final int _id;
//   final String _name;

//   const User({required int id, required String name})
//       : this._id = id,
//         this._name = name;

//   const User.VIP() : this(id: 0, name: 'VIP person');
//   String toJson() {
//     return '{"id":$_id,"name":"$_name"}';
//   }

//   @override
//   String toString() {
//     return 'Id :$_id name :$_name';
//   }
// }

// void main() {
//   final user = User.VIP();
//   print(user);
//   print(user._id);
// }
//////////////////////////////////////////////////////////
// class User {
//   final int _id;
//   final String _name;

//   const User({required int id, required String name})
//       : this._id = id,
//         this._name = name;

//   const User.VIP() : this(id: 0, name: 'VIP person');
//   String toJson() {
//     return '{"id":$_id,"name":"$_name"}';
//   }

//   factory User.ray() {
//     return User(id: 42, name: 'Ray');
//   }

//   int get id {
//     return _id;
//   }

//   String get name {
//     return _name;
//   }

//   @override
//   String toString() {
//     return 'Id :$_id name :$_name';
//   }
// }

// void main() {
//   final user = User.VIP();
//   print(user);
//   print(user._id);
//   print(user.id);
//   print(user.name);
// }
//////////////////////////////////////////////////////////
// class Email {
//   String _address;
//   Email({required String address}) : _address = address;

//   String get value => _address;
//   void set value(String address) => _address = address;
// }

// void main() {
//   var em = Email(address: 'xyz@gmail.com');
//   print(em.value);
//   em.value = 'kumarvishnu1619@gmail.com';
//   print(em.value);
// }
//////////////////////////////////////////////////////////
// class User {
//   final int _id;
//   final String _name;
//   static const _vipId = 0;
//   static const _vipName = 'anonymous';
//   const User({required int id, required String name})
//       : this._id = id,
//         this._name = name;

//   const User.VIP() : this(id: _vipId, name:_vipName);
//   String toJson() {
//     return '{"id":$_id,"name":"$_name"}';
//   }

//   factory User.ray() {
//     return User(id: 42, name: 'Ray');
//   }

//   int get id {
//     return _id;
//   }

//   String get name {
//     return _name;
//   }

//   @override
//   String toString() {
//     return 'Id :$_id name :$_name';
//   }
// }

// void main() {
//   final user = User.VIP();
//   print(user);
//   print(user._id);
//   print(user.id);
//   print(user.name);
// }
//////////////////////////////////////////////////////////
// class MySingleton {
//   MySingleton._();
//   static final MySingleton instance = MySingleton._();
// }
//////////////////////////////////////////////////////////
// class A {
//   A();
//   factory A() {
//     return A();
//   }
// }
//////////////////////////////////////////////////////////
// void main() {
//   String? name;
//   name = name ?? 'vishnu';
//   print(name);

//   int? a;
//   a ??= 15;
//   print(a);

//   int? age;
//   print(age?.isEven);
// }
//////////////////////////////////////////////////////////
// bool? isBeautiful(String? item) {
//   if (item == 'flower')
//     return true;
//   else if (item == 'garbage') return false;
//   return null;
// }

// void main() {
//   bool flowerIsBeautiful = isBeautiful('flower')!;
// }
//////////////////////////////////////////////////////////
void main() {
  const desserts = ['cookies', 'cupcakes', 'donuts', 'pie'];
  final dessert = ['cookies', 'cupcakes', 'donuts', 'pie'];
  dessert[0] = 'cooky';
  print(dessert);
  print(desserts);

  final modifiableList = [DateTime.now(), DateTime.now()];
  final unmodifiableList = List.unmodifiable(modifiableList);
  print(unmodifiableList);

  // const pastries = ['cookies', 'croissants'];
  // const candy = ['Junior Mints', 'Twizzlers', 'M&Ms'];
  // const dsrts = ['donuts', ...pastries, ...candy];
  // print(dsrts);

  const peanutAllergy = true;
  const candy = ['Junior Mints', 'Twizzlers', if (!peanutAllergy) 'reeses'];
  print(candy);

  final candyy = ['DONUT', for (var d in candy) d.toUpperCase()];
  print(candyy);
}
//////////////////////////////////////////////////////////