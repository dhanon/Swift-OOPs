//: [Previous](@previous)

import Foundation
//Syntax
//struct nameStruct {
//   // Properties
//   Property 1 : Type
//   Property 2 : Type
//
//   // Methods
//   func functionName(){
//      // Statement
//   }
//
//   // Mutating method
//   mutating func functionName(){
//      // Statement
//   }
//}
//Problem-1
struct Developer {
    var name: String
    var jobTitle: String
    var jobExp: Int
}

// Creating instance using memberwise initializer
var anon = Developer(name: "Anon", jobTitle: "iOS Developer", jobExp: 1)

print("Original Values:")
print("Name: \(anon.name)")
print("Job Title: \(anon.jobTitle)")
print("Job Exp: \(anon.jobExp)")

// Modifying the values of the properties using dot notation
//var asif = anon
//asif.name = "Asif"
//anon.name
anon.name = "Asif"
anon.jobTitle = "iOS Engineer"
anon.jobExp = 5

 //Displaying the updated values
print("\nUpdated Values:")
print("Name: \(anon.name)")
print("Job Title: \(anon.jobTitle)")
print("Job Exp: \(anon.jobExp)")

//Problem-2
struct Employee {
    var name: String
    var age: Int
    var department: String
    var salary: Int
}

var employeeData = Employee (name: "Deloar", age: 27, department: "IT", salary: 25000)

print("\nEmployee Details:")
print("Name: \(employeeData.name)")
print("Age: \(employeeData.age)")
print("Department: \(employeeData.department)")
print("Salary: \(employeeData.salary)")

employeeData.name = "Asif"
employeeData.age = 28
employeeData.department = "Dev"
employeeData.salary = 30000

print("\nEmployee Details After Modifying:")
print("Name: \(employeeData.name)")
print("Age: \(employeeData.age)")
print("Department: \(employeeData.department)")
print("Salary: \(employeeData.salary)")


// Defining a structure with sub-properties
struct Address{
    var buildingName: String
    var city: String
    var postalCode: Int
}

struct Student {
    var name: String
    var age: Int
    var address: Address
}

var studentData = Student(name: "Hosen", age: 30, address: Address(buildingName: "Rose Velly", city: "Mirpur", postalCode: 1216))

print("\nStudent Details:")
print("Name: \(studentData.name)")
print("Age: \(studentData.age)")
print("Building Name: \(studentData.address.buildingName)")
print("City: \(studentData.address.city)")
print("Postal Code: \(studentData.address.postalCode)")

studentData.address.buildingName = "LEDORADO"
studentData.address.city = "Dhanmondi"
studentData.address.postalCode = 1209

print("\nStudent Details After Modifying:")
print("Name: \(studentData.name)")
print("Age: \(studentData.age)")
print("Building Name: \(studentData.address.buildingName)")
print("City: \(studentData.address.city)")
print("Postal Code: \(studentData.address.postalCode)")


//methods of the structure
struct Parallelogram {
    var base: Double
    var height: Double
    
    func calculateParallelogramArea() -> Double {
        return base * height
    }
    
    mutating func resizeParallelogram(by value: Double){
        base += value
        height += value
    }
}

var result = Parallelogram(base: 7.9, height: 5.10)
let area = result.calculateParallelogramArea()

print("\nArea of the Parallelogram: \(area)")
result.resizeParallelogram(by: 5)

print("Updated values: ")
print("Base: \(result.base)")
print("Height: \(result.height)")

//structure as a value type.
// Defining a structure
struct Student2 {
   var name: String
   var age: Int
}

// Creating an instance of the Student structure
var stud = Student2(name: "Sumit", age: 22)

// Creating a copy of the stud instance
var details = stud

// Modifying the values of the properties
details.name = "Mohina"
details.age = 34

print("\nstudent 1: name-\(stud.name) and age-\(stud.age)")
print("student 2: name-\(details.name) and age-\(details.age)\n")

//self keyword in structure.
struct markStruct{
   var mark1: Int
   var mark2: Int
   var mark3: Int
   
   // Initializer with same property and parameter name
   init(mark1: Int, mark2: Int, mark3: Int){
   
      // Using self keyword to distinguish between the property and parameter name
     //The self keyword is necessary here because the parameter names are the same as the property names. self.mark1 refers to the property of the struct, while mark1 refers to the initializer parameter.
      self.mark1 = mark1
      self.mark2 = mark2
      self.mark3 = mark3
   }
}

// Creating an instance of the structure
var marks = markStruct(mark1: 98, mark2: 96, mark3:100)

// Displaying the values of the properties
print(marks.mark1)
print(marks.mark2)
print(marks.mark3)


//pass a structure to a function.
struct Rectangle {
   var length: Double
   var width: Double
}

// Passing a structure to a function as a regular parameter
func areaOfRectangle(value:Rectangle){
   print("\nArea of the Rectangle is \(value.length * value.width)")
}

// Passing a structure to a function as an inout parameter. Because we will modify the structure
func newAreaOfRectangle(data:inout Rectangle, byL newLength : Double, byW newWidth : Double){
   data.length *= newLength
   data.width *= newWidth
   print("New Area of the Rectangle is \(data.length * data.width)")
}

// Create an instance of the rectangle structure
var myObj = Rectangle(length: 10.0, width: 9.0)

// Calling the function
areaOfRectangle(value:myObj)

// Calling the another function
newAreaOfRectangle(data: &myObj, byL : 2, byW : 3)
