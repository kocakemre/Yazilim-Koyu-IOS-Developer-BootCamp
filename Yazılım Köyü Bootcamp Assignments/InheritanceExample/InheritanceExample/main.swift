//
//  main.swift
//  InheritanceExample
//
//  Created by Emre Kocak on 23.08.2022.
//

import Foundation

/*
 MARK: - Kara Araçları Modellemesi
 ///////////////////////////////////////////
 Farklı türlerdeki araçların modellemesi yapılacaktır.
 - Araç türleri olarak Otomobil, kamyon, otobüs olacaktır.
 
 - Tüm Araçların tekerlek sayısı, yolcu kapasitesi, ileri-geri gidebilme işlevleri olacaktır.
 
 - Otomobillerin yolcu kapasitesi en fazla 4 kişi olabilirken, bu sayı kamyonlarda 2 otobüslerde 55 olacaktır.
 
 - Kamyonların yolcular haricinde yük taşıma kapasitesi de olacaktır.
 
 - Kamyon ve otobüslerde 88 km/h hız limiti bulunacaktır.
 - Otobüsler yolcunun yanında bagaj taşıma kapasitesi ve mutfak özelliği bulunacaktır.
 
 */

class Vehicle {
    var numberOfWheels: Int!
    var passengerCapacity: Int
    
    init(passengerCapacity: Int) {
        self.passengerCapacity = passengerCapacity
    }
    
    func goForward() -> String {
        return "İleri Git."
    }
    
    func goBack() -> String {
        return "Geri Git."
    }
}

class Automobile: Vehicle {
    init() {
        super.init(passengerCapacity: 4)
    }
}

class HeavyVehicle: Vehicle {
    let speedLimit: Int = 88
}

class Truck: HeavyVehicle {
    
    var loadCarryCapacity: Int!
    
    init() {
        super.init(passengerCapacity: 2)
    }
}

class Bus: HeavyVehicle {
    
    var luggageCarryCapacity: Int!
    var kitchenType: String!
    
    init() {
        super.init(passengerCapacity: 55)
    }
}
