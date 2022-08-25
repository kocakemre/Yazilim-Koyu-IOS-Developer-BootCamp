//
//  Executive.swift
//  ProtocolExample2
//
//  Created by Emre Kocak on 24.08.2022.
//

import Foundation

class Executive: Employee, ExecutiveProtocol {
    
    func checkIt() -> String {
        return "Çalışanı kontrol edildi."
    }

}
