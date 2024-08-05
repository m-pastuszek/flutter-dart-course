mixin Breating {
  void breathe() => print('breathing');
}

mixin Swimming {
  void swim() => print('swimming');
}

class Animal with Breating {}

class Plant with Breating {}

class Fish extends Animal with Swimming {}

class Human extends Animal with Swimming {}

void main() {
  // final breathing = Breating();
  // mixins cannot be instantiated
}