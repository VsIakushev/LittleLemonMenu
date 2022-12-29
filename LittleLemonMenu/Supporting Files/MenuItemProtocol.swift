//
//  MenuItemProtocol.swift
//  LittleLemonMenu
//
//  Created by Vitaliy Iakushev on 29.12.2022.
//

import Foundation

protocol MenuItemProtocol {
    var id: UUID { get }
    var title: String { get }
    var menuCategory: MenuCategory { get }
    var ordersCount: Int { get set }
    var price: Double { get set }
    var ingredients: [Ingredient] {get set }
    
    //    var price: Double { get } // maybe mistake in Task 7? 2 times price.
}


//
//Id variable of type UUID with a getter method.
//Price variable of type Double with a getter method.
//Title variable of type String with a getter method.
//Menu category variable of type MenuCategory with a getter method.
//Orders count variable of type Int with getter and setter methods.
//Price variable of type Int with getter and setter methods.
//Ingredient variable of type Ingredient array with getter and setter methods.
