//: [Previous](@previous)

import UIKit

class Developer {
    // Properties of class
    var name: String?
    var jobTitle: String?
    var yearsExp: Int?
    
    // Initializer
    init(name: String, jobTitle: String, yearsExp: Int) {
        self.name       = name
        self.jobTitle   = jobTitle
        self.yearsExp = yearsExp
    }
    
    // Method
    func speakName(){
        print(name!)
    }
}

class iOSDeveloper: Developer {
    var favoriteFramework: String?
    
    func speakFavoriteFramework () {
        if let favoriteFramework = favoriteFramework {
            print("Favorite Framework is: \(favoriteFramework)")
        } else {
            print("I don't have favorite framework.")
        }
    }
    //Override Inheritance
    override func speakName() {
        print("Name: \(name!) and Job Title: \(jobTitle!)")
    }
}

let anon = iOSDeveloper(name: "Anon", jobTitle: "iOS Developer", yearsExp: 1)

anon.favoriteFramework = "Core Data"
anon.speakFavoriteFramework ()
anon.speakName()
