import 'dart:io';

void main(){

  stdout.write("How You will pay:");
    print("Option 1) Cash on Delivery 2)Jaazcash 3) Easypaisa");
 int how_pay = int.parse(stdin.readLineSync() ?? ""); 

Payment pay_option;

  if(how_pay == 1 ){
      pay_option = CashOnDelivery();
       pay_option.pay();
  }
  else if (how_pay == 2){
     pay_option = JaazCash();
     pay_option.pay();
  }
  else if (how_pay == 3){
    pay_option = Easypaisa();
     pay_option.pay();
  }
  else{
    print("Please select a valid option");
  }
}

class Payment {

  void pay(){
    print("payment method will be called here");
  }
}

class CashOnDelivery extends Payment{

  void pay() {
      print("Payment will be done via Cash On Delivery");
  }
}
class JaazCash extends Payment{

  @override
  void ay() {
      print("Payment done via Jaazcash");
  }
}

class Easypaisa extends Payment{

  @override
  void pay() {
      print("Payment done via Easypaisa");
  }
}