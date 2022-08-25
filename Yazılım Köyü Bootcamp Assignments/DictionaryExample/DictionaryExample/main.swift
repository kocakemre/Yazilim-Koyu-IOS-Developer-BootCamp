//
//  main.swift
//  DictionaryExample
//
//  Created by Emre Kocak on 25.08.2022.
//

import Foundation

// MARK: - Dictionary Example

// Öğrenci Numarası, vize, final değerleri olan öğrenci listesindeki tüm öğrenciler için numara ve not ortalamasını ekrana yazdıran uygulama.

var students = [[String:Any]]()

var student1 : [String:Any] = [
    "no" : "1111",
    "midterm" : 50,
    "final" : 100
]

var student2 : [String:Any] = [
    "no" : "2222",
    "midterm" : 40,
    "final" : 10
]

var student3 : [String:Any] = [
    "no" : "3333",
    "midterm" : 90,
    "final" : 100
]

students.append(student1)
students.append(student2)
students.append(student3)

var no: String
var midterm: Float
var final: Float
var average: Float

for student in students {
    
    no = student["no"] as! String
    midterm = Float(student["midterm"] as! Int)
    final = Float(student["final"] as! Int)
    
    average = (midterm + final) / 2
    
    print("Öğrenci No: \(no) -> Ortalaması = \(average)")
}


