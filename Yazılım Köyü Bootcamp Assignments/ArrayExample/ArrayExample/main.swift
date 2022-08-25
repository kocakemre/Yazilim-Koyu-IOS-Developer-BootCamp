//
//  main.swift
//  ArrayExample
//
//  Created by Emre Kocak on 25.08.2022.
//

import Foundation

// MARK: - Array Example

// Bir sayı listesindeki tek ve çift sayıları ayrı listelere aktarıp, listelerin ikisini de ayrı ayrı ekrana yazdıran kodu yazınız

var oddNumbersArray = [Int]()
var evenNumbersArray = [Int]()
var numberListsArray: [Int] = [2,5,8,3,6,4,10,50,47,89,56]

for number in numberListsArray {
    
    if number % 2 == 0 {
        evenNumbersArray.append(number)
    }else {
        oddNumbersArray.append(number)
    }
}

print("Tek sayı listesi     = \(oddNumbersArray)")
print("Çift sayılar listesi = \(evenNumbersArray)")
