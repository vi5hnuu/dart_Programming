mixin EggLayer {
  void layEggs() {
    print('plop plop');
  }
}

mixin Flyer {
  void fly() {
    print('swoosh swoosh');
  }
}

abstract class Bird {
  void fly();
  void layEggs();
}

abstract class Animal {
  void eat();
  void move();
}

class Robin extends Bird with EggLayer, Flyer {}

class Platypus extends Animal with EggLayer {
  @override
  void eat() {
    print('Munch munch');
  }

  @override
  void move() {
    print('Glide glide');
  }
}

void main(List<String> args) {
  final playtpus = Platypus();
  final robin = Robin();
  playtpus.layEggs();
  robin.layEggs();
}
