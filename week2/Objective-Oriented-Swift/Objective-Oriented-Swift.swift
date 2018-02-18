//
//  Objective-Oriented-Swift.swift
//  
//
//  Created by Liao Kevin on 2018/2/18.
//



import UIKit



//Objective-Oriented Swift

//question1
enum Gender{
    
    case male
    
    case female
    
    case undefined
}

class Animal{
    
    let gender: Gender
    func eat(){
        print("I eat everthing")
    }
    
    init(){
        self.gender = .undefined
    }
}

//question2
class Elephant: Animal{
    
    override func eat() {
        print("I eat grass")
    }
}

class Tiger: Animal{
    
    override func eat() {
        print("I eat meat")
    }
}

class Horse: Animal{
    
    override func eat() {
        print("I eat grass")
    }
}

//question3
class Zoo {
    var weeklyHot: Animal
    init(){
        self.weeklyHot = Tiger()
    }
}

let zoo =  Zoo()
zoo.weeklyHot =  Tiger()
zoo.weeklyHot =  Elephant()
zoo.weeklyHot =  Horse()

