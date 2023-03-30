// Generic type parameter <T> cho phép bạn khai báo kiểu dữ liệu mà không cần xác định kiểu dữ liệu cụ thể,
//mà thay vào đó sử dụng một kiểu dữ liệu tương đối.

num calculateAverage<T extends num>(List<num> values) {
  var sum = values.reduce((num value, num element) => value + element);
  return sum / values.length;
}
