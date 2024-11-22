// Định nghĩa lớp Car
class Car {
  String make;   // Hãng xe
  String model;  // Mẫu xe
  int year;      // Năm sản xuất

  // Constructor
  Car(this.make, this.model, this.year);

  // Phương thức hiển thị thông tin
  void displayInfo() {
    print("Hãng xe: $make");
    print("Mẫu xe: $model");
    print("Năm sản xuất: $year");
  }
}

void main() {
  // Tạo một đối tượng của lớp Car
  Car myCar = Car("Toyota", "Camry", 2020);

  // Gọi phương thức displayInfo
  myCar.displayInfo();
}
