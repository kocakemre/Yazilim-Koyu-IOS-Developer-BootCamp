//
//  main.swift
//  GenericExample
//
//  Created by Emre Kocak on 24.08.2022.
//

import Foundation

// Generic bir tipte verileri alan ve gelen listeyi kopyalayıp, kopya listeyi geri döndüren fonksiyonu yazınız.

func copyList<T>(list: [T]) -> [T] {
    
    var copyList = [T]()
    
    copyList.append(contentsOf: list) // listedeki elemanları copyList içersine atacak yada for döngüsü ile yapılır.
    
    return copyList
}

var list1 = [1, 2, 3, 4]

var list2 = copyList(list: list1)

var list3 = ["e","e2","e3"]

var list4 = copyList(list: list3)

print(list2)
print(list4)
