void main (){
  Bank_Account user = Bank_Account("fares", 1001);
  

 
user.deposit_money(-200);
user.display();

}
class Bank_Account{
  String? Acc_Name;
  int? Acc_number;
  double _balance = 0;

Bank_Account(this.Acc_Name,this.Acc_number);

double get balance => _balance;

  void deposit_money(double amount){ 
    if( amount < 0) print("invalid amount");
    return;
    _balance += amount;
  }
  
 void withdraw_money(double amount){
  if(amount>_balance){
    print("do not have money");
    return;
  }
  else{
    print("you withdraw $amount");
    _balance -= amount;
  }
 }
 void check_balance(){
  print(_balance);
 }

 void display(){
  print("your acc name is $Acc_Name and acc number is $Acc_number and your balance is $_balance");
 }
}