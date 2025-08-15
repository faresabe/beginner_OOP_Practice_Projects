void main (){

}

class Student {
  var name,id;
  List<double> grades = [];


  Student(this.name,this.id,this.grades );

  void addgrade(double grade){
      grades.add(grade);
  }
  
   double calculategpa(){
    if (grades.isEmpty) return 0.0;
    double sum = 0;
    for(var grade in grades){
       sum = sum +grade;
    }
    return sum / grades.length;

  }

  void display(){
    print("The student id is $id and his name is $name and his/her grades are $grades finally the gpa is ${calculategpa().toStringAsFixed(2)}");
  }

}