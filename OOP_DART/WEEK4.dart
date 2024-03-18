// Abstract class representing a generic shape
abstract class Shape {
  void draw();
}

// Concrete class representing a circle
class Circle extends Shape {
  double radius;

  Circle(this.radius);

  @override
  void draw() {
    print("Drawing a circle with radius $radius");
  }
}

// Concrete class representing a rectangle
class Rectangle extends Shape {
  double width;
  double height;

  Rectangle(this.width, this.height);

  @override
  void draw() {
    print("Drawing a rectangle with width $width and height $height");
  }
}

// Interface for objects that can be serialized to a file
abstract class Serializable {
  void saveToFile(String fileName);
}

// A class representing a shape that implements the Serializable interface
class SerializableShape extends Shape implements Serializable {
  @override
  void draw() {
    print("Drawing a serializable shape");
  }

  @override
  void saveToFile(String fileName) {
    // Implementation to save the shape to a file
    print("Saving shape to file: $fileName");
  }
}

// Function to read data from a file and create shape objects
void initializeShapesFromFile(String fileName) {
  // Read data from file and initialize shapes
  // For demonstration, let's assume the file contains information about circles and rectangles
}

// Function to demonstrate the use of a loop
void drawShapes(List<Shape> shapes) {
  for (var shape in shapes) {
    shape.draw();
  }
}

void main() {
  // Creating instances of shapes
  var circle = Circle(5.0);
  var rectangle = Rectangle(4.0, 6.0);
  var serializableShape = SerializableShape();

  // Demonstrating method overrides
  circle.draw();
  rectangle.draw();
  serializableShape.draw();

  // Demonstrating serialization
  serializableShape.saveToFile("shape.txt");

  // Demonstrating initialization from file
  initializeShapesFromFile("shapes_data.txt");

  // Demonstrating the use of a loop
  var shapes = [circle, rectangle, serializableShape];
  drawShapes(shapes);
}
