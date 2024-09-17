import UIKit

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
