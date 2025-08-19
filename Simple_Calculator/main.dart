void main(){
  calculator operation = calculator(12, 23);
   double result = operation.addition();
   double result2 = operation.multiplication();
   double result3 = operation.subtraction();
   double result4 = operation.divison();
   operation.display(result2);
   


}
class calculator{
  double?number_a;
  double?number_b;

  calculator(this.number_a,this.number_b);

  double addition(){
    return  (number_a??0) + (number_b?? 0);

  }
  double subtraction(){
    return (number_a??0) - (number_b?? 0);
  }
  double multiplication(){
    return (number_a??0) * (number_b?? 0);
  }
  double divison(){
    if(number_b == 0){
     print("divison by zero");
      return 0;
    }
    else { return (number_a??0) / (number_b?? 0);}
  }


  void display(double result){
   print("the answer is $result");
  }
}