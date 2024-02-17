
// Create two classes about employees:
// first class about engineer has information about
// 1- engineer name 2-age 3-graduation year 4-salary.
// The class has 2 methods one to apply tax 20% if salary is greater than 5000 and other to display the engineer information.
// second class about manager has information about
// 1- manager name 2-age 3-salary 4- private variable about duration of management.
// The class has one method to print all manager info.


void main()
{
employ em =employ(eng_name: "ahmed",age: 21,s: 5200,graduationYear: 2017);
 double taxs = em.tax();
em.info();
print("TaxSalary: $taxs");
//====================
manager mg =manager(manager_name: "mohamed", age: 45, salary: 999999);
 mg.set(15);
 mg.infomagaer();

}

class employ
{
  String eng_name;
  int age;
  double s;
  int graduationYear;
  employ({required this.eng_name,required this.age,required this.s,required this.graduationYear});

  double tax(){
              return s>5000?s* 0.2: s;
}
void info()
{
    print("=======Eng.information=======");
    print('Name: $eng_name');
    print('age: $age');
    print("GraduationYear:$graduationYear");
    print('Salary: $s');
}

}
class manager{
String manager_name;
int age;
double salary;
manager({required this.manager_name,required this.age,required this.salary});
//private variable about duration of manage
 int _myPrivateduration =10;
  int get()=> _myPrivateduration; //get read value بترجع القيمة
  void set(int value) //get اعاده تعين  && لما انده انده على set
 {
  // this._myPrivateduration=value;
   //دى صح ودى صح
   _myPrivateduration = value;  
}
void infomagaer()
{
    print("=======manger.information=======");
    print('Name: $manager_name');
    print('age: $age');
    print('Salary: $salary');
    print('Duration: $_myPrivateduration');
}


}