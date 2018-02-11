//
//  Remote-Assignment.swift
//  
//
//  Created by Liao Kevin on 2018/2/11.
//

//: Playground - noun: a place where people can play

import UIKit



/////Swift Basic/////

//question1
let PI: Double = 3.1415

//question2
let x: Int = 10
let y: Int = 4
let average : Double = Double(x+y)/2

//question3
let averageStr = String(format: "%.1f", average)

//question4
var flag: Bool = true
var inputString: String = "Hello world"
let bitsInBite: Int = 8
let averageScore: Double = 86.8

//question5
var salary: Int = 22000
salary = salary + 28000

//question6
let q6 = (0 == Int(truncating: false)) //q6 is true, so 0 is equal to false

//question7
let constant1 = 10
let constant2 = 3
let remain = constant1 % constant2


/////Swift Collection and Cotrol Flow/////

//question1
var myFriends : [String] = []

//question2
myFriends.append("Ian")
myFriends.append("Bomi")
myFriends.append("Kevin")

//question3
myFriends.append("Michael")

//question4
var tempElement = myFriends[2]
myFriends.remove(at: 2)
myFriends.insert(tempElement, at: 0)

//question5
myFriends.forEach { (name) in
    print(name)
}



/////Dictionary/////

//question1
var myCountryNumber = [String : Int]()

//question2
myCountryNumber["US"] = 1
myCountryNumber["GB"] = 44
myCountryNumber["JP"] = 81

//question3
myCountryNumber.removeValue(forKey: "US")

//question4
myCountryNumber["GB"] = 0

//question5
let myCountryNumberKeys = Array(myCountryNumber.keys)
let myCountryNumberValues = Array(myCountryNumber.values)

//question6
//因為myFriends裡面只有四個名字，所以index最大是3
//index=5的名字不存在



/////For, While, Repeat/////

//question1
for i in 1...myFriends.count-1 {
    print(myFriends[i])
}

for (key,value) in myCountryNumber {
    print(key,value)
}

//question2
let lottoNumbers = [10, 9, 8, 7, 6, 5]
for i in lottoNumbers.count-3...lottoNumbers.count-1{
    print(lottoNumbers[i])
}

//question3
for i in 5...10{
    print(i)
}

for i in (6...10).reversed() where i%2 == 0{
    print(i)
}

//question4
var i: Int = 5
while(i <= 10){
    print(i)
    i = i+1
}

i = 10
while(i >= 6){
    print(i)
    i = i-2
}

//question5
i = 5
repeat{
    print(i)
    i=i+1
}while(i <= 10)

i = 10
repeat{
    print(i)
    i = i-2
}while(i >= 6)



/////if statement/////

//question1
var isRaining = 1
if (isRaining == 1){
    print("It's raining. I don't want to work today")
}
else{
    print("Although it's sunny, I still don't want to work today")
}



/////Switch/////

//question1
let jobLevel: Int = 1

switch jobLevel{
case 1:
    print("Member")
case 2:
    print("Team Leader")
case 3:
    print("Manager")
case 4:
    print("Director")
default:
    print("We don't have this job")
}



/////Function in Swift/////

//question1
func greet(person: String) -> String{
    return "Hello, " + person
}
print(greet(person: "Celeste"))

//question2
func multiply(a: Int,b: Int = 10){
    print(a*b)
}







