//
//  main.swift
//  LoopsExample
//
//  Created by Emre Kocak on 25.08.2022.
//

import Foundation

// MARK : - Loops Example
// 100 üyeden 1 km yakınımda kaç kişi var
// İki boyutlu düzlemde 1 birimlik bir alanda rastgele üretilen 100 noktadan, 1 birim yaricapi olan daire üzerine ve içine düşenlerin ekrana yazdırılması

var closeNumber: Int = 0
var x: Double
var y: Double

for _ in 0..<100 {
    
    x = Double.random(in: 0...1)
    y = Double.random(in: 0...1)
    
    if ((x * x) + (y * y)) <= 1 {
        closeNumber += 1
    }
}

print("Yakındakiler: \(closeNumber)")
