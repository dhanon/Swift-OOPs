//: [Previous](@previous)

import Foundation

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

// Displaying the updated values
print("\nUpdated Values:")
print("Name: \(anon.name)")
print("Job Title: \(anon.jobTitle)")
print("Job Exp: \(anon.jobExp)")
