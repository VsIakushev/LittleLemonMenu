//
//  MenuViewViewModel.swift
//  LittleLemonMenu
//
//  Created by Vitaliy Iakushev on 29.12.2022.
//

import Foundation

class MenuViewViewModel {
    var foodMenuItems: [MenuItem] = []
    var drinkMenuItems: [MenuItem] = []
    var desetrMenuItems: [MenuItem] = []
    
//    init(foodMenuItems: [MenuItem], drinkMenuItems: [MenuItem], desetrMenuItems: [MenuItem]) {
//        self.foodMenuItems = foodMenuItems
//        self.drinkMenuItems = drinkMenuItems
//        self.desetrMenuItems = desetrMenuItems
//    }
    
    //func createMenuItems(numberOfItems: Int) -> [MenuItem] {
    //    var menuItems : [MenuItem] = []
    //
    //    for item in 1...numberOfItems {
    //        menuItems.append(<#T##newElement: MenuItem##MenuItem#>)
    //    }
    //
    //    return menuItems
    //}
    func fillMenuItemsArray(numberOfItems: Int, category: MenuCategory) -> [MenuItem] {
        var menuItemArray: [MenuItem] = []
        for number in 1...numberOfItems {
            menuItemArray.append(MenuItem(title: "\(category) \(number)", menuCategory: category, ordersCount: Int.random(in: 0...50), price: Double.random(in: 3.0...50), ingredients: takeRandomIngredients()))
        }
        return menuItemArray
    }
    
    func takeRandomIngredients() -> [Ingredient] {
        var ingredients : [Ingredient] = []
        for _ in 0...3 {
            guard let ingredient = Ingredient.allCases.randomElement() else { break }
            ingredients.append(ingredient)
        }
        return ingredients
    }
}


//class MenuItem {
//    
//}
