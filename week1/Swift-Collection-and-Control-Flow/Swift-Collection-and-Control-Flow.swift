//
//  Swift-Collection-and-Control-Flow.swift
//  
//
//  Created by Liao Kevin on 2018/2/11.
//

//: Playground - noun: a place where people can play

import UIKit


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

