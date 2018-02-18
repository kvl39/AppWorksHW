//
//  Protocol-in-Swift.swift
//  
//
//  Created by Liao Kevin on 2018/2/18.
//



import UIKit



//////Protocol in Swift

//question1~4
protocol Policeman {
    func arrestCriminals()
}

protocol Toolman{
    func fixComputer()
}

struct Person: Policeman{
    var name: String
    func arrestCriminals() {}
    var toolman: Toolman
}

//question5
struct Engineer: Toolman{
    func fixComputer() {}
}

//question6
let engineer = Engineer()
let Steven = Person(name: "Steven", toolman: engineer)

