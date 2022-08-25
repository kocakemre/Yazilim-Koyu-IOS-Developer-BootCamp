//
//  EmployeeProtocol.swift
//  ProtocolExample2
//
//  Created by Emre Kocak on 24.08.2022.
//

import Foundation

protocol EmployeeProtocol {
    var registerNo: Int { get set }
    var name: String  { get set }
    var surname: String { get set }
    var role: Role { get set }
    
    func permission() -> String
}
