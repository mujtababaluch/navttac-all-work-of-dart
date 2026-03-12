void main(){

Loin obj1 = Loin();
obj1.role();
obj1.breathing();
obj1.eat();

print("======================Cow========================");
Cow shoaib =Cow();
shoaib.eat();
}

// ------------------- great-grandparent class 
class Livingthing{

  void  breathing(){
    print("all livingthing can breathe");
  }
}

// ------------------- Child 1 of grandparent and his child

class Human{

  void thinking(){
    print("I have extra ordinary thinking Skills");
  }
}

class Pakistani extends Human{

  void location(){
    print("i live in pakistan");
  }
}

// class Indian extends Human{

//   void location(){
//     print("i live in India");
//   }
// }


// ------------------- Child 2 of grandparent(Animal)  and his child
class Animal extends Livingthing{

  void sound(){
    print("all animal have one sound ");
  }
}

class Herbiverse extends Animal{
  void eat(){
    print("i can eat  grass");
  }
}

class Carniverse extends Animal{
   void eat(){
    print("i can eat  Meat");
  }
}

// Now grandchild  of Animals and Child of herbiverse and carniverse

class Cow extends Herbiverse{

  void benfits(){
    print("you can drik cow milk and meat");
  }
}

class Loin extends Carniverse {

  void role(){
    print("I am the king of Jungle");
  }
}