// extension là một tính năng mới được giới thiệu trong
//Dart 2.6 cho phép mở rộng các lớp hoặc các thư viện mà không cần phải tạo một lớp con mới.
//Extension cho phép thêm các phương thức, thuộc tính, getter, setter cho một lớp đã tồn tại,
//mà không cần phải sửa đổi mã nguồn của lớp đó.

import 'package:dart_basic_v/abstract_class.dart';

void main(List<String> args) {
  String st = "hello";
  print(st);
  print("----------Extension");
  print(st.capitalize());
  ShowScreen show = ShowScreen();
  print(show.openScreen());
}

extension Untils on String {
  String capitalize() {
    return "${this[0].toUpperCase()}${this.substring(1)}";
  }
}

extension OpenScreen on ShowScreen {
  bool openScreen() {
    return true;
  }
}

class ShowScreen {
  void printScreen() {
    print("Heelo");
  }
}
