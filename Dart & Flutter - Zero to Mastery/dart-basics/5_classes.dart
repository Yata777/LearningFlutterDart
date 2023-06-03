void main() {
  Car car1 = Car(color:"red", ps:200);

}

class Car {
  late String _color;
  late int _ps;
  String get getColor => this._color;
  set setColor(String color) => this._color = color;

  //Constructor
  Car({required String color, required int ps}){
    this._color = color;
    this._ps = ps;
  }

  /*
  Alternatively, if the variables are declared final, then the
  constructor fits in a single line, e.g.:

  final String color;
  final int ps;
  Car({required String color, required int ps});
  */

  void drive() {
    print("Car is moving");
  }

  void sayColor() {
    print(this._color);
  }
}
