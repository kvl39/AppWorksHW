//
//  For-While-Repeat.swift
//  
//
//  Created by Liao Kevin on 2018/2/11.
//

//: Playground - noun: a place where people can play

import UIKit

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

