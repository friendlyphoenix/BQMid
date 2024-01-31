import 'bank_account.dart';
import 'student.dart';

void main() {
  BankAccount account1 = BankAccount(1001, 5000.0, "Savings Plus", 7.5);
  BankAccount account2 = BankAccount(1002, 10000.0, "Savings", 6.0);

  account1.deposit(1000);
  account1.withdraw(200);
  account1.addInterest();
  account1.display();

  print("\n");

  account2.deposit(500);
  account2.withdraw(1500);
  account2.addInterest();
  account2.display();

  print("\n");

  Student student1 = Student("Yousuf", "1111", []);
  Student student2 = Student("Ali", "1112", []);

  student1.addCourse("Math");
  student1.addCourse("Science");
  student2.addCourse("History");
  student2.addCourse("English");

  print("Initial Courses:");
  student1.displayCourses();
  student2.displayCourses();

  student1.dropCourse("Science");
  student2.dropCourse("English");

  print("\nUpdated Courses:");
  student1.displayCourses();
  student2.displayCourses();
}
