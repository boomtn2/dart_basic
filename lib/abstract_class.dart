// abstract class là một lớp trừu tượng không thể khởi tạo trực tiếp mà chỉ được sử dụng để kế thừa.
//Một abstract class cung cấp một bộ khung cho các lớp con kế thừa nó,
//bao gồm các thuộc tính, phương thức, sự kiện hoặc chỉ mục,
//mà các lớp con có thể sử dụng hoặc triển khai thêm.
//extention
//Một abstract class có thể có các phương thức trừu tượng và các phương thức được triển khai.
//Các phương thức được triển khai sẽ có thân hàm và có thể được ghi đè trong các lớp con.

void main(List<String> arguments) {
  printAction(PersonRive());
  print("-------------");
  //printAction(PersonSprite());
}

void printAction(Person person) {
  person.run();
  person.jump();
  person.left();
  person.right();
  print(person.stateRun);
}

abstract class Person {
  bool get stateRun;
  //Phương thức trừu tượng
  void run();

  void jump();

  void left();

//Phương thức triển khai
  void right() {
    print("right Person");
  }
}

class PersonRive extends Person {
  @override
  void jump() {
    // TODO: implement jump
  }

  @override
  void left() {
    // TODO: implement left
  }

  @override
  void run() {
    // TODO: implement run
  }

  @override
  // TODO: implement stateRun
  bool get stateRun => throw UnimplementedError();
  //test
}
