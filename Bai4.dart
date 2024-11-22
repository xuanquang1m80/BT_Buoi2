import 'dart:io';

void main() {
  try {
    // Nhập số từ người dùng
    print("Nhập số thứ nhất:");
    double so1 = double.parse(stdin.readLineSync()!);

    print("Nhập số thứ hai:");
    double so2 = double.parse(stdin.readLineSync()!);

    // Thực hiện phép chia
    double ketQua = so1 / so2;
    print("Kết quả phép chia: $ketQua");
  } catch (e) {
    if (e is FormatException) {
      print("Lỗi: Vui lòng nhập số hợp lệ.");
    } else if (e is IntegerDivisionByZeroException || e is UnsupportedError) {
      print("Lỗi: Không thể chia cho 0.");
    } else {
      print("Đã xảy ra lỗi: $e");
    }
  }
}
