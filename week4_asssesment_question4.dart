// Abstract class
abstract class Vehicle {
  String brand;
  int speed;

  Vehicle(this.brand, this.speed);

  void move(); // abstract method
}

// Mixin for electric vehicles
mixin Electric {
  void chargeBattery() {
    print("Battery is charging...");
  }
}

// Mixin for fuel-powered vehicles
mixin FuelPowered {
  void refuel() {
    print("Vehicle is refueling...");
  }
}

// Car class
class Car extends Vehicle with FuelPowered {
  Car(String brand, int speed) : super(brand, speed);

  @override
  void move() {
    print("$brand car is moving at $speed km/h.");
  }
}

// Bike class
class Bike extends Vehicle {
  Bike(String brand, int speed) : super(brand, speed);

  @override
  void move() {
    print("$brand bike is moving at $speed km/h.");
  }
}

// Electric scooter class
class ElectricScooter extends Vehicle with Electric {
  ElectricScooter(String brand, int speed) : super(brand, speed);

  @override
  void move() {
    print("$brand scooter is moving at $speed km/h.");
  }
}

// Demonstration for Question 2 (Vehicle Classes)
void runVehicleDemo() {
  print("\n--- Vehicle Demo ---");
  List<Vehicle> vehicles = [
    Car("Toyota", 120),
    Bike("Yamaha", 80),
    ElectricScooter("Xiaomi", 25),
  ];

  for (var v in vehicles) {
    v.move();
    if (v is Car) {
      v.refuel();
    }
    if (v is ElectricScooter) {
      v.chargeBattery();
    }
  }
  print("--- Vehicle Demo End ---");
}

void main() {
  // The original code had a call to `runLibraryDemo()` which was not defined.
  // This line has been removed to fix the compilation error.
  runVehicleDemo();
}