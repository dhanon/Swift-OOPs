//: [Previous](@previous)

import Foundation

//Enum without rawValue
enum Phones {
    case iPhone
    case Samsung
    case Pixel
    case Mi
}

func getOpinion(label phone: Phones) {
    if phone == .iPhone {
        print("I used this one.")
    } else if phone == .Samsung{
        print("I won't to switch.")
    } else if phone == .Pixel {
        print("I don't like Android.")
    } else {
        print("Best phone for Bangladesh.")
    }
}

getOpinion(label: .Mi)

//Enum with rawValue
enum Phone: String {
    case iPhone12     = "I used this one."
    case SamsungS12   = "I won't to switch."
    case Pixel19      = "I don't like Android."
    case Nokia        = "Best phone ever."
}

func getMyOpinion(label phone: Phone) {
    print(phone.rawValue)
}

getMyOpinion(label: .Nokia)


//Enum with Switch
enum Phone2 {
    case iPhone13
    case SamsungNote
    case GooglePixel
    case MiNote
}

func chooseYourPhone(on phone2: Phone2) {
    
    switch phone2{
    case .iPhone13:
        print("I used this one.")
    case .SamsungNote:
        print("I won't to switch.")
    case .GooglePixel:
        print("I don't like Android.")
    case .MiNote:
        print("Best phone for Bangladesh.")
    }
}

chooseYourPhone(on:.GooglePixel)

//Enum with Switch Using Variable
enum Subjects {
    case Math
    case Computer
    case Physics
    case Bangla
    case English
}

var name: Subjects = .Computer

switch name {
case .Math, .Computer, .Physics:
    print("\(name) is Mendatory Subjects.")
case .Bangla, .English:
    print("\(name) is Optional Subjects.")
}


//Enum with Switch Using an if statement
enum Colors {
    case Black
    case White
    case Red
    case Brown
    case Green
    case Olive
    
}

var colorName: Colors = .Olive

if colorName == .Black {
    print("\(colorName) is Required for Car.")
} else {
    print("\(colorName) is Optional.")
}

//Enum with Switch Using Multiple Data-Types

enum DataValues {
    case stringValue(String)
    case intValue(Int)
    case doubleValue(Double)
    case floatValue(Float)
    case booleanValue(Bool)
}

let stringCase = DataValues.stringValue("Hello Moto")
let intCase = DataValues.intValue(560)
let doubleCase = DataValues.doubleValue(57.998766)
let floatCase = DataValues.floatValue(3.90)
let booleanCase = DataValues.booleanValue(false)

// Switch to handle different cases
switch floatCase {
case .stringValue(let string):
    print("String value: \(string)")
case .intValue(let int):
    print("Int value: \(int)")
case .doubleValue(let double):
    print("Double value: \(double)")
case .floatValue(let float):
    print("Float value: \(float)")
case .booleanValue(let bool):
    print("Boolean value: \(bool)")
}
