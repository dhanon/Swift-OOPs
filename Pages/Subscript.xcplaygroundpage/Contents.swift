//: [Previous](@previous)

import Foundation

//Syntax
//subscript(index: Int) -> Int {
//   get {
//      // Retrieve the value at the specified index
//   }
//   set(newValue) {
//      // Set the value at the specified index
//   }
//}
//access values using subscript syntax.

//read-only subscript −
// Defining structure
struct subexample {
   let decrementer: Int
    
   // Declaring subscript
   subscript(index: Int) -> Int {
      return decrementer / index
   }
}

// Creating instance of the structure
let division = subexample(decrementer: 100)

// Retrieving values using subscript syntax
print("The number is divisible by \(division[9]) times")
print("The number is divisible by \(division[2]) times")
print("The number is divisible by \(division[3]) times")
print("The number is divisible by \(division[5]) times")
print("The number is divisible by \(division[7]) times")

// Defining class
class daysofaweek {

   private var days = ["Sunday", "Monday", "Tuesday", "Wednesday", "Thursday", "Friday", "Saturday"]
    
   // Declaring subscript
   subscript(index: Int) -> String {
    
      // Retrieve the value at the specified index
      get {
         return days[index]
      }
        
      // Set the value at the specified index
      set(newValue) {
         self.days[index] = newValue
      }
   }
}

// Creating instance of class
var p = daysofaweek()

// Accessing elements using subscript
print("\n\(p[0])")
print(p[1])
print(p[2])
print(p[3])

//Options in Subscript
// Defining structure
struct Matrix {

   let rows: Int, columns: Int
   var print: [Double]

   // Initializer to create a matrix
   init(rows: Int, columns: Int) {
      self.rows = rows
      self.columns = columns
        
      // Initializing the matrix with an array
      print = Array(repeating: 0.0, count: rows * columns)
   }

   // Subscript for accessing and modifying elements in the matrix
   subscript(row: Int, column: Int) -> Double {
      get {
         return print[(row * columns) + column]
      }
      set {
         print[(row * columns) + column] = newValue
      }
   }
}

// Creating an instance
var mat = Matrix(rows: 3, columns: 3)

// Modifying elements in the matrix using subscript notation
mat[0, 0] = 1.0
mat[0, 1] = 2.0
mat[1, 0] = 3.0
mat[1, 1] = 5.0

// Accessing and printing elements from the matrix using subscript notation
print("\n\(mat[0, 0])")
print("\(mat[0, 1])")
print("\(mat[1, 0])")
print("\(mat[1, 1])")
