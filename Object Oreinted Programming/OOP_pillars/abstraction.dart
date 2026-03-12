import 'dart:io';

void main (){
  stdout.write("How You will pay:");
    print("Option 1) Cash on Delivery 2)Jaazcash 3) Easypaisa");
 int how_pay = int.parse(stdin.readLineSync() ?? ""); 
 
 PaymentMethod paymentM;

 if(how_pay ==1){
  paymentM = CashOnDelivery();
  paymentM.pay();
  paymentM.send_recipt();
 }
 else if (how_pay==2){
  paymentM = JaazCash();
  paymentM.pay();
  paymentM.send_recipt();
 }
 else if (how_pay == 3){
  paymentM = Easypaisa();
  paymentM.pay();
    paymentM.send_recipt();
 }
 else{
  print("invalid option");
 }

}

abstract class PaymentMethod{

  void pay();

  void send_recipt(){
    print("Recipt will be shared and you are paid");
  }
} 



class CashOnDelivery implements PaymentMethod{
  @override
  void pay() {
    print("Your payment has been proceeded on cash on delivery");
  }
  
  @override
  void send_recipt() {

    print("Recipt will be shared and you are unpaid");
  }
  
  
  
}

class JaazCash extends PaymentMethod{
  @override
  void pay() {
      print("Your payment has been proceeded on JaazCash");

  }
  
}
class Easypaisa extends PaymentMethod{
  @override
  void pay() {
     print("Your payment has been proceeded on Easiypaisa");
  }

}

// abstract class test{

// void show();

// void show2();

// }

// class childone extends test{
//   @override
//   void show() {
//    print("this is calling from child class one1");
//   }
  
// }

// class childtwo extends test{
//   @override
//   void show() {
//     // TODO: implement show
//   }
  
//   @override
//   void show2() {
//     // TODO: implement show2
//   }
  
//}