//
//  Enumerations-and-Optionals-in-Swift.swift
//  
//
//  Created by Liao Kevin on 2018/2/18.
//



import UIKit



//////Enumerations and Optionals in Swift

//question1
enum Gasoline: Double{
    case gasoline_92 = 26.4
    case gasoline_95 = 27.9
    case gasoline_98 = 29.9
    case diesel = 24.3
}

func getPrice(of Gasoline: Gasoline) -> Double{
    return Gasoline.rawValue
}

//question2
class Pet{
    let name: String
    init (name:String){
        self.name = name
    }
}

class Person{
    var pet: Pet?
}

let People =  Person()
func getPetName(People: Person){
    guard let nameOfPet = People.pet?.name else{
        return
    }
    print(nameOfPet)
}
getPetName(People: People)

let anotherPeople = Person()
func getPetName2(People: Person){
    if let nameOfPet = People.pet?.name{
        print(nameOfPet)
    }
    else
    {
        return
    }
}






