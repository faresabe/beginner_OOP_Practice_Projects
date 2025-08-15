void main (){


Student student1 = Student("Abraham", 0101,[90.1,78.2]); 
Student student2 = Student("Alina", 0201,[90.1,78.2]); 
Student student3 = Student("yoln", 0301,[90.1,70.2]); 

student1.addgrade(89.2);


student3.addgrade(79);
student2.addgrade(100);


  List <Student> students = [];
   students.add(student1);
   students.add(student2);
   students.add(student3);
   
for (var student in students){
  student.display();
}
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