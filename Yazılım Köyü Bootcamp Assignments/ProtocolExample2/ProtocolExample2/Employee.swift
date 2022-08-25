//
//  Employee.swift
//  ProtocolExample2
//
//  Created by Emre Kocak on 24.08.2022.
//

import Foundation

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
