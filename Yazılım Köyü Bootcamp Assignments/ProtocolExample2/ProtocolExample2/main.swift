//
//  main.swift
//  ProtocolExample2
//
//  Created by Emre Kocak on 24.08.2022.
//

import Foundation

var employee1 = Employee(registerNo: 1, name: "Hasan", surname: "Erdoğan", role: .CleaningStaff)
var employee2 = Employee(registerNo: 2, name: "Emre", surname: "Koçak", role: .SoftwareDeveloper)
var executive1 = Executive(registerNo: 3, name: "Emir", surname: "Yıldız", role: .Manager)
var executive2 = Executive(registerNo: 4, name: "Hilal", surname: "Koçak", role: Role.Submanager)

print("\(employee1.role) -> \(employee1.name + " " + employee1.surname) = \(employee1.permission())")
print("\(employee2.role) -> \(employee2.name + " " + employee2.surname) = \(employee1.permission())")
print("\(executive1.role) -> \(executive1.name + " " + executive1.surname) = \(employee1.name) \(executive1.checkIt())")
print("\(executive2.role) -> \(executive2.name + " " + executive2.surname) = \(executive2.permission())")

