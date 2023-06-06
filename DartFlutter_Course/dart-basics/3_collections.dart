void main(List<String> args) {
  //Lists
  List<int> list = [1,2,3];
  list.add(4);
  print(list);
  list.insert(4,5);
  print(list);
  list.remove(3);
  print(list);
  list.isEmpty;
  print(list.last);

  print("End of lists section");

  //Maps
  Map map = {1:"Franz", 2:"Hans", 3:"Cantz"};
  print(map);
  print(map.keys);
  print(map.length);
  print(map.values);
  
  String name = map[1];

  Set set = {1,2,3};



}