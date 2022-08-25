//
//  main.swift
//  OOPExample
//
//  Created by Emre Kocak on 25.08.2022.
//

import Foundation

// MARK: - OOP Example

//Bir öğrenci uygulama modelinin oluşturulması
//
//Ad, soyad, numara ve aldığı dersler bulunan öğrenciler olacaktır.
//
//Öğrencilerin derslerinin ad, vize ve final notları olabilir.
//
//Öğrencinin derslerinin not ortalaması hesaplanabilir.
//
//Öğrencinin sınıf geçme durumu hesaplanabilir. Tüm derslerin aritmetik ortalaması 40 ın altındaysa kalır. Üstündeyse geçer.
//
//3 farklı öğrenci oluşturup bu öğrencilerin notlarını girerek geçti kaldı durumlarını ekrana yazdıralım.

class Lesson {
    var name: String?
    var midterm: Double?
    var final: Double?
//    var ortalama: Double {
//        ((vize ?? 0) + (final ?? 0)) / 2
//    }
    
    init(name: String) {
        self.name = name
    }
    
    func averageCalculate() -> Double{
        return ((midterm ?? 0) + (final ?? 0)) / 2
    }
}

class Student {
    let name: String
    let surname: String
    let number: Int
    var lessons = [Lesson]()
    
    init(name: String, surname: String, number: Int) {
        self.name = name
        self.surname = surname
        self.number = number
    }
    
    func calculateStatus() -> String {
        var totalNote: Double = 0.0
        
        for lesson in lessons {
            totalNote += lesson.averageCalculate()
        }
        
//        var sonuc = toplamNot / Double(dersler.count)
//
//        if sonuc < 40 {
//            return "Kaldı"
//        }else {
//            return "Geçti"
//        }
        return  totalNote / Double(lessons.count) < 40 ? "Kaldı" : "Geçti"
    }
  
}

var student1 = Student(name: "Emre", surname: "Koçak", number: 1)
var student2 = Student(name: "Hilal", surname: "Yıldız", number: 2)
var student3 = Student(name: "Osman", surname: "Erdoğan", number: 3)

var lesson1 = Lesson(name: "Math")
var lesson2 = Lesson(name: "Physics")

lesson1.midterm = 50
lesson2.final = 80

student1.lessons.append(lesson1)

lesson1.midterm = 100
lesson2.final = 80

student1.lessons.append(lesson2)

lesson1 = Lesson(name: "Math")
lesson2 = Lesson(name: "Physics")

lesson1.midterm = 10
lesson2.final = 20

student2.lessons.append(lesson1)

lesson1.midterm = 0
lesson2.final = 60

student2.lessons.append(lesson2)

lesson1 = Lesson(name: "Math")
lesson2 = Lesson(name: "Physics")

lesson1.midterm = 100
lesson2.final = 20

student3.lessons.append(lesson1)

lesson1.midterm = 100
lesson2.final = 60

student3.lessons.append(lesson2)

print("Student 1 Status = \(student1.calculateStatus())")
print("Student 2 Status = \(student2.calculateStatus())")
print("Student 3 Status = \(student3.calculateStatus())")
