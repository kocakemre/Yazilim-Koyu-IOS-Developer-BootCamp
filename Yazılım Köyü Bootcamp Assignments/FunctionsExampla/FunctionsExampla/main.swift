//
//  main.swift
//  FunctionsExampla
//
//  Created by Emre Kocak on 25.08.2022.
//

import Foundation

// MARK: - Function Example

//Verilen sayı listesindeki verileri kontrol edip. Eğer listedeki eleman sayısı 10 dan küçükse string olarak sonuc değeri alan bir işlevi tetikleyen ve parametre olarak "Eleman sayısı yetersiz" metnini gönderen,  eğer 10 dan büyükse sayıların aritmetik ortalamasını hesaplayıp kendisine gönderilen farklı bir işleve gönderen fonksiyonu yazınız.

func controlList(list: [Double], resultValue: (String)->Void, average: (Double)->Void) {
    
    if list.count <= 10 {
        
        resultValue("Eleman sayısı yetersiz")
        
        return
    }
    
    var total: Double = 0
    
    for number in list {
        total += number
    }
    
    let averageNumber: Double
    
    averageNumber = total / Double(list.count)
    
    average(averageNumber)
    
}

func outputString(result:  String) {
    print("Message = \(result)")
}

func average(average: Double) {
    print("Aritmetik Ortalama = \(average)")
}


var numberList: [Double] = [1,2,3,4,2,5,6,1,5,1,2,2]
controlList(list: numberList, resultValue: outputString, average: average)
