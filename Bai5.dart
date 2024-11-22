import 'dart:convert'; // Dùng để xử lý JSON
import 'dart:io';

Future<void> fetchData() async {
  try {
    // Giả lập API bằng cách sử dụng một chuỗi JSON
    print("Đang truy xuất dữ liệu...");
    await Future.delayed(Duration(seconds: 2)); // Giả lập độ trễ
    String jsonResponse = '{"id": 1, "title": "Học Dart bất đồng bộ", "completed": true}';

    // Chuyển đổi chuỗi JSON thành Map
    Map<String, dynamic> data = jsonDecode(jsonResponse);

    // In dữ liệu ra màn hình
    print("Dữ liệu truy xuất được:");
    print("ID: ${data['id']}");
    print("Tiêu đề: ${data['title']}");
    print("Hoàn thành: ${data['completed']}");
  } catch (e) {
    print("Đã xảy ra lỗi khi truy xuất dữ liệu: $e");
  }
}

void main() async {
  await fetchData();
}
