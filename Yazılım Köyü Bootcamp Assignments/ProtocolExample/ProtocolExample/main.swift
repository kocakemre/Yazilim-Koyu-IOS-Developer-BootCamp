//
//  main.swift
//  ProtocolExample
//
//  Created by Emre Kocak on 24.08.2022.
//

import Foundation

// MARK: - Çalışan Modellemesi

// Çalışan modellemesi
// Çalışan rolleri olarak Müdür, Müdür yardımcısı, Yazılımcı, Temizlik görevlisi gibi çalışanların bulunduğu bir iş yerinde çalışanların bilgilerinin tutulduğu yapı için Çalışan ve Yöneticilerin standartlarının belirlendiği yapının oluşturulması

// Çalışanlar için SicilNo, Ad, Soyad zorunludur. Her bir çalışan izin kullanabilir

// Yöneticiler Çalışanın tüm özelliklerini kapsamakla birlikte Altında çalışanları kontol etmek zorundadır

enum Role {
    case Manager
    case Submanager
    case SoftwareDeveloper
    case CleaningStaff
}

protocol EmployeeProtocol {
    var registerNo: Int { get set }
    var name: String  { get set }
    var surname: String { get set }
    var role: Role { get set }
    
    func permission() -> String
}

protocol ExecutiveProtocol: EmployeeProtocol {
    func checkIt() -> String
}

class Employee: EmployeeProtocol {
    
    var registerNo: Int
    var name: String
    var surname: String
    var role: Role
    
    init(registerNo: Int, name: String, surname: String, role: Role) {
        self.registerNo = registerNo
        self.name = name
        self.surname = surname
        self.role = role
    }
    
    func permission() -> String {
        return "İzin kullandı."
    }
}

class Executive: Employee, ExecutiveProtocol {
    
    func checkIt() -> String {
        return "Çalışanı kontrol edildi."
    }

}

var employee1 = Employee(registerNo: 1, name: "Hasan", surname: "Erdoğan", role: .CleaningStaff)
var employee2 = Employee(registerNo: 2, name: "Emre", surname: "Koçak", role: .SoftwareDeveloper)
var executive1 = Executive(registerNo: 3, name: "Emir", surname: "Yıldız", role: .Manager)
var executive2 = Executive(registerNo: 4, name: "Hilal", surname: "Koçak", role: .Submanager)

print("\(employee1.role) -> \(employee1.name + " " + employee1.surname) = \(employee1.permission())")
print("\(employee2.role) -> \(employee2.name + " " + employee2.surname) = \(employee1.permission())")
print("\(executive1.role) -> \(executive1.name + " " + executive1.surname) = \(employee1.name) \(executive1.checkIt())")
print("\(executive2.role) -> \(executive2.name + " " + executive2.surname) = \(executive2.permission())")
