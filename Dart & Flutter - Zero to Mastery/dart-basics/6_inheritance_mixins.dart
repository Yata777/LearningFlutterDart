void main() {
  Student student1 = Student();
  student1.name = "Thomas";
  print(student1.name);
  student1.learn();
}

class Person {
  late String _name;
  String get name => this._name;
  set name(String value) => this._name = value;

  late int _alter;
  get alter => this._alter;
  set alter(value) => this._alter = value;

  void laufen() {
    print("Person läuft");
  }
}

//Mixins adds functionality of learn
mixin Learner{
  void learn() => print("Learning");
}

class Student extends Person with Learner{
  late int _studyYear;
  int get studyYear => this._studyYear;
  set setStudyYear(int studyYear) => this._studyYear = studyYear;
}
