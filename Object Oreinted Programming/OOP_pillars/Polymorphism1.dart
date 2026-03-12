void main(){

//  int a = 10;
// int b = 9;


Dog obj1 =  Dog();

Cat obj2 = Cat();


// data type    // varibale name          //vlaue  
Animal            general_varaible                  = obj2;

general_varaible.speak();

}

class Animal {

   void speak(){
    print("All Animal can speak");
   }
}

class Dog extends Animal {

  @override
  void speak(){
    print("Dog Brake");
  }
}

class  Cat extends Animal{

  @override
  void speak(){
    print("meow!!");
  }
}
