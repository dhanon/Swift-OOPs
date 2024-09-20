import UIKit

//Syntax:
/*class nameClass {
   // Properties
   Property 1 : Type
   Property 2 : Type

   // Initializer
   init(){
      // statement
   }

   // Methods
   func functionName(){
      // Statement
   }
}*/

class Developer {
    // Properties of class
    var name: String?
    var jobTitle: String?
    var jobExp: Int?
    
    // Initializer
    init() {} //Empty init with optionals
    //inti with proper Paramters value
    init(name: String, jobTitle: String, jobExp: Int) {
        self.name = name
        self.jobTitle = jobTitle
        self.jobExp = jobExp
    }
    
    // Method
    func speakName(){
        print(name!)
    }
}
// Create an instance/object
let anon = Developer(name: "Deloar", jobTitle: "iOS", jobExp: 1)

anon.speakName()
anon.name           //Dot(.) those follow the Dot Syntax
anon.jobTitle
anon.jobExp

print("Developer name-\(anon.name) Job title-\(anon.jobTitle) Job Exp-\(anon.jobExp)")

//Accessing the Properties of the Class in Swift
// Defining a class
class Employee {
   var name: String
   var department: String
   var salary: Int
    
   // Initializer
   init(name: String, department: String, salary: Int){
      self.name = name
      self.department = department
      self.salary = salary
   }
}

// Creating an instance of the Employee class
var emp = Employee(name: "Suman", department: "Designing", salary: 33000)

// Accessing the values of the properties using dot notation
print("Employee Details:")
print("Name: \(emp.name)")
print("Department: \(emp.department)")
print("Salary: \(emp.salary)")

// Modifying the values of the properties using dot notation
emp.salary = 40000

// Displaying the updated values
print("\nUpdated Value:")
print("Salary: \(emp.salary)")


//Accessing the Methods of the Class in Swift
class Parallelogram {

   // Properties of class
   var base: Double
   var height: Double
    
   // Initializer
   init(base: Double, height: Double){
      self.base = base
      self.height = height
   }
    
   // Method to calculate the area of the Parallelogram
   func calculateParallelogramArea() -> Double {
      return base * height
   }
}

// Create an instance of the Parallelogram class
var myObj = Parallelogram(base: 10.0, height: 9.0)

// Calling the calculateParallelogramArea() method
let area = myObj.calculateParallelogramArea()
print("Area of the Parallelogram: \(area)")


//Class as a Reference Type in Swift
// Defining a class
class Student {

   // Properties
   var name: String
   var age: Int
    
   // Initializer
   init(name: String, age: Int){
      self.name = name
      self.age = age
   }
}

// Creating an instance of the Student class
var stud = Student(name: "Kunal", age: 22)

// Assigning stud to details
// Here details have the reference of stud object
var details = stud

// Modifying the values of the properties
// Here the modification will affect the stud instance because it passed as a reference-type
details.name = "Mohina"
details.age = 40

print("student 1: name-\(stud.name) and age-\(stud.age)")
print("student 2: name-\(details.name) and age-\(details.age)")
