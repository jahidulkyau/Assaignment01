abstract class Role{

  void displayRole();
}


class Person extends Role{

  late String name;
  late int age;
  late String address;

  Person({required this.name,required this.age,required this.address});

  @override
  void displayRole(){


  }
}



//Student class

class Student extends Person{

  late String studentID;
  late String grade;
  late List<int> courseScores;

  Student({
    required this.studentID,
    required this.grade,
    required this.courseScores,

    required String name,
    required int age,
    required String address,




  }):super(name: name,age: age,address: address);

  @override
  void displayRole() {
    print('Role : Student');
  }

  double  CalAvgSC(double S1,double S2,double S3){
    double result=(S1+S2+S3)/courseScores.length;
    return result;
  }

}





//Teacher class

class Teacher extends Person{

  late String teacherID;
  late List<String> coursesTaught;

  Teacher({
    required this.teacherID,
    required this.coursesTaught,

    required String name,
    required int age,
    required String address,

  }) : super(name: name, age: age, address: address);

  @override
  void displayRole() {
    print("Role : Teacher");
  }

  void displayCourse() {
    print("Courses Taught : ");
    for (var course in coursesTaught) {
      print("-$course");
    }
  }

}



//student management system

class StudentManagementSystem {

  static void main() {
    Student student = Student(
      name: "John Deo",
      age: 20,
      address: "123 Main St",
      studentID: "S123",
      grade: "A",
      courseScores: [90, 85, 82],
    );

    Teacher teacher = Teacher(
      name: "Mrs. Smith",
      age: 35,
      address: "456 Oak St",
      teacherID: "T456",
      coursesTaught: ["Math", "English", "Bangla"],


    );

    print("\nStudent Information: \n");
    student.displayRole();
    print("Name: ${student.name}");
    print("Age: ${student.age}");
    print("Address: ${student.address}");
    print(
        "Average Score: ${student.CalAvgSC(90, 85, 92).toStringAsFixed(1)}\n");


    print("Teacher Information:\n");
    teacher.displayRole();
    print("Name: ${teacher.name}");
    print("Age: ${teacher.age}");
    print("Address: ${teacher.address}");
    teacher.displayCourse();
  }


}



void main(){
  StudentManagementSystem.main();
}