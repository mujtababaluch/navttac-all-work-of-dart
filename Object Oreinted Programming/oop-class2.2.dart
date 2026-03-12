void main(){
    Person shoaib = Person("Waleed");
}

class Person {

  String name = "Waleed";
  int age = 19;
  double height = 4.7;

  Person(String name){
  print("i am a constructor $name");
}

  void show_name(){
    print("My Name is $name");
  }
}