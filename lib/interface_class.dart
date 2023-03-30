void main(List<String> arguments) {
  printAction(PersonRive());
  print("-------------");
  printAction(PersonSprite());
  printPower(PersonRive());
}

void printAction(Person person) {
  person.run();
  person.jump();
  person.left();
  person.right();
  print(person.stateRun);
}

void printPower(Robot person) {
  person.power();
}

abstract class Robot {
  void power() {}
}

abstract class Person {
  bool get stateRun;
  void run();

  void jump();

  void left();

  void right();
}

class PersonRive implements Person, Robot {
  @override
  void jump() {
    print("Jump personrive");
  }

  @override
  void left() {
    print("Left personrive");
  }

  @override
  void right() {
    print("Right personrive");
  }

  @override
  void run() {
    print("Run personrive");
  }

  @override
  // TODO: implement stateRun
  bool get stateRun => false;

  @override
  void power() {
    print("robot");
  }
}

class PersonSprite implements Person {
  @override
  void jump() {
    print("Jump Person Sprite");
  }

  @override
  void left() {
    print("Left Person Sprite");
  }

  @override
  void right() {
    print("Right Person Sprite");
  }

  @override
  void run() {
    print("Run Person Sprite");
  }

  @override
  // TODO: implement stateRun
  bool get stateRun => true;
}
