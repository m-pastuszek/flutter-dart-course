class Animal {
  final int age;

  Animal({required this.age});

  void sleep() => print('sleep');
}

class Dog extends Animal {
  Dog({required super.age});

  void bark() => print('bark');

  @override
  void sleep() {
    super.sleep();
    print('dog: sleep');
  }
}

void main() {
  final animal = Animal(age: 10);
  animal.sleep();

  final dog = Dog(age: 5);
  dog.bark();
  dog.sleep();
}
