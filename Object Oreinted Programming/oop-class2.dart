import 'dart:io';

void  main(){
 
  stdout.write("Enter Your Name: ");
  String? name = stdin.readLineSync();

    stdout.write("How Much You want to Intial Deposit: ");
  double initial_deposit = double.parse(stdin.readLineSync() ??"");

  stdout.write("Which Account would you like to open (current || savings): ");
  String? account_type = stdin.readLineSync();

  
BankAccount hbl_account_0001 = BankAccount(your_name: name ?? "", 
inital_deposit: initial_deposit, account_type: account_type ?? "Savings");

  stdout.write("What do you want to do? ( press 1 for withdraw || press 2 for depsit): ");

 int action = int.parse(stdin.readLineSync() ??"");

 if(action == 1){
      stdout.write("How Much You want to withdraw: ");
  double withdraw = double.parse(stdin.readLineSync() ??"");
  hbl_account_0001.Withdraw(withdraw);

  hbl_account_0001.Show_account_detals();
 }
 else if (action == 2){
    stdout.write("How Much You want to Deposit: ");
  double depsit = double.parse(stdin.readLineSync() ??"");
  hbl_account_0001.deposit(depsit);

    hbl_account_0001.Show_account_detals();
 }
 else {
  print("Hum Mazrat Khawann ka apka indraj ghalat ha bara karam 0.diyega option ma sa koi muntaqib kare Shukryiaa");
 }
}


class BankAccount {

String Account_holder_name ="";
double Account_holder_balance = 0.0;
String Account_holder_Type = "";

BankAccount({ required String your_name , required double inital_deposit ,
  required String account_type}){
  Account_holder_name = your_name;
  Account_holder_balance =  inital_deposit;
  Account_holder_Type =account_type;
}

// void create_account({required String your_name ,required double inital_deposit , required String account_type}){

//   Account_holder_name = your_name;
//   Account_holder_balance =  inital_deposit;
//   Account_holder_Type =account_type;
// }

void deposit(double how_much_want_to_deposit){

    Account_holder_balance = Account_holder_balance + how_much_want_to_deposit;
}
void Withdraw(double how_much_want_to_withdraw){

  if(how_much_want_to_withdraw<=Account_holder_balance)
  {
      Account_holder_balance -= how_much_want_to_withdraw;
  }
  else{
    print("Insuffcient balance!! Your total balance us ${Account_holder_balance}");
  }

}
void Show_account_detals(){
  print("Your name: ${Account_holder_name}");
  print("Your balance: ${Account_holder_balance}");
  print("Your Account is: ${Account_holder_Type}");
}


}