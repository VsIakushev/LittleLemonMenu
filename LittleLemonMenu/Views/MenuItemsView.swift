//
//  MenuItemsView.swift
//  LittleLemonMenu
//
//  Created by Vitaliy Iakushev on 28.12.2022.
//

import SwiftUI



struct MenuItemsView: View {
   
        
    // Creating menu Items
    var foodMenuItems = MenuViewViewModel().fillMenuItemsArray(numberOfItems: 12, category: .Food)
    var drinkMenuItems = MenuViewViewModel().fillMenuItemsArray(numberOfItems: 8, category: .Drink)
    var desertMenuItems = MenuViewViewModel().fillMenuItemsArray(numberOfItems: 4, category: .Desert)
    
    
    private var adaptiveColumns = [GridItem(.adaptive(minimum: 100))]
    private var food : [Int] = Array(1...12)
    private var drinks : [Int] = Array(1...8)
    private var desserts : [Int] = Array(1...4)
    
    var body: some View {
        NavigationView {
            VStack() {
                ScrollView {
                
                    Text("Food")
                        .font(.title)
                        .frame(maxWidth: .infinity, alignment: .leading)
                    
                    LazyVGrid(columns: adaptiveColumns, spacing: 10) {
                        ForEach(foodMenuItems) { item in
                            NavigationLink(destination: MenuItemDetailsView(menuItem: item)) {
                                VStack {
                                    Rectangle()
                                        .foregroundColor(.black)
                                        .frame(width: 110, height: 80)
                                    Text(item.title)
                                        .foregroundColor(.black)
                                }
                            }
                        }
                    }
                    
                    
                    
                    Text("Drinks")
                        .font(.title)
                        .frame(maxWidth: .infinity, alignment: .leading)
                    
                    LazyVGrid(columns: adaptiveColumns, spacing: 10) {
                        ForEach(drinkMenuItems) { item in
                            NavigationLink(destination: MenuItemDetailsView(menuItem: item)) {
                                VStack {
                                    Rectangle()
                                        .foregroundColor(.black)
                                        .frame(width: 110, height: 80)
                                    Text(item.title)
                                        .foregroundColor(.black)
                                }
                            }
                        }
                    }
                    
                    Text("Deserts")
                        .font(.title)
                        .frame(maxWidth: .infinity, alignment: .leading)
                    
                    LazyVGrid(columns: adaptiveColumns, spacing: 10) {
                        ForEach(desertMenuItems) { item in
                            NavigationLink(destination: MenuItemDetailsView(menuItem: item)) {
                                VStack {
                                    Rectangle()
                                        .foregroundColor(.black)
                                        .frame(width: 110, height: 80)
                                    Text(item.title)
                                        .foregroundColor(.black)
                                }
                            }
                        }
                    }
                    
                }
            }
            .padding()
            .navigationTitle("Menu")
            .toolbar {
                NavigationLink(destination: MenuItemsOptionView()) {
                    Image(systemName: "slider.horizontal.3")
                        .bold()
                }
            }
        }
        
    }
}



struct MenuItemsView_Previews: PreviewProvider {
    static var previews: some View {
        MenuItemsView()
    }
}
