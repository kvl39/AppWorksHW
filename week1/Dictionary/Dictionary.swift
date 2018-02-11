//
//  Swift-Dictionary.swift
//  
//
//  Created by Liao Kevin on 2018/2/11.
//

//: Playground - noun: a place where people can play

import UIKit


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

