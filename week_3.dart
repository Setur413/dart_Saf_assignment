// Abstract class: Shape
abstract class Shape {
  // Abstract method
  double calculateArea();
}

// Encapsulation: Car class with private fields
class Car {
  String _brand; // Private variable
  int _year;     // Private variable

  // Constructor
  Car(this._brand, this._year);

  // Controlled access methods (getters)
  String get brand => _brand;
  int get year => _year;

  // Setter method
  set year(int value) {
    if (value > 0) {
      _year = value;
    } else {
      print("Invalid year");
    }
  }

  // Method to display car details
  void displayDetails() {
    print("Car brand: $_brand, Year: $_year");
  }
}

// Inheritance: Car subclass (SportsCar)
class SportsCar extends Car {
  // Additional property for the SportsCar class
  bool isTurbo;

  // Constructor
  SportsCar(String brand, int year, this.isTurbo) : super(brand, year);

  // Overriding displayDetails method (Polymorphism)
  @override
  void displayDetails() {
    super.displayDetails();
    print("Turbo: $isTurbo");
  }
}

// Polymorphism: Different subclass implementations of calculateArea
class Rectangle extends Shape {
  double width, height;

  Rectangle(this.width, this.height);

  @override
  double calculateArea() {
    return width * height;
  }
}

class Circle extends Shape {
  double radius;

  Circle(this.radius);

  @override
  double calculateArea() {
    return 3.14 * radius * radius;
  }
}

void main() {
  // Demonstrating Encapsulation
  var car = Car("Toyota", 2020);
  car.displayDetails();
  car.year = 2025;  // Valid update
  car.displayDetails();

  // Demonstrating Inheritance and Polymorphism
  var sportsCar = SportsCar("Ferrari", 2022, true);
  sportsCar.displayDetails();

  // Demonstrating Abstraction and Polymorphism
  Shape rectangle = Rectangle(10, 5);
  Shape circle = Circle(7);

  print("Rectangle area: ${rectangle.calculateArea()}");
  print("Circle area: ${circle.calculateArea()}");
}
