//Mixin là một tính năng của Dart giúp tạo ra và sử dụng các phương thức và thuộc tính mà
//không cần phải kế thừa từ một lớp cụ thể.
//Nó cho phép sử dụng lại code giữa các lớp không liên quan đến nhau,
//cũng như định nghĩa các thuộc tính và phương thức mà các lớp khác có thể sử dụng được.

void main(List<String> args) {}

mixin ExceptionPareIntMixin on DialogShowMixin {
  int toInt() {
    return 0;
  }
}

mixin DialogShowMixin {
  void showDialog() {
    print("Show dialog");
  }

  void printLog(String log) {
    print("Log:$log");
  }
}

class OverGame with DialogShowMixin, ExceptionPareIntMixin {
  void showOver() {
    showDialog();
  }

  void pareInt() {
    toInt();
  }
}
