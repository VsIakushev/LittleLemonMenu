//
//  MenuItem.swift
//  LittleLemonMenu
//
//  Created by Vitaliy Iakushev on 29.12.2022.
//

import Foundation

// maybe some mistake in Asignment? Task 4 " Create MenuItem struct", in Task 7 MenuItem is a class?

struct MenuItem: MenuItemProtocol, Identifiable {
    var id: UUID = UUID()
    var title: String
    var menuCategory: MenuCategory
    var ordersCount: Int
    var price: Double
    var ingredients: [Ingredient]
    
    mutating func incrementOrdersCount() {
        self.ordersCount += 1
    }
}

//struct MenuItem: Identifiable {
//    var id: ObjectIdentifier
//    var title : String
//    var ingredients : [Ingredient]
//}

