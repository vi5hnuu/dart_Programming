void main() {
  // num myNumber = 3.14;
  // print(myNumber is int);
  // print(myNumber is double);
  // print(myNumber is String);
  // print(myNumber.runtimeType);

  var integer = 100;
  var decimal = 12.5;
  print(decimal.toInt());
  //print(decimal as int);

  num abc = 15.5;
  print(abc as double); //redundant

//casting
  num someNumer = 3;
  print((someNumer as int).isEven);//someNumber is actually int so 'as' keyword is used
  
}
