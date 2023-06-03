void main(List<String> args) {
  if(2>1){
    print("Hurra");
  }
  else{
    print("Nurra");
  }
  int age = 21;
  switch(age){
    case 18: print("I am 18"); break;
    case 20: print("I am 20"); break;
    default: print("I am ageless");
  }

  //while clear

  List list = [1,2,3];
  for(int i in list){print(i);}
  //or
  list.forEach((i) => print(i));
}