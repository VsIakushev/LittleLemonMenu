//
//  MenuItemDetailsView.swift
//  LittleLemonMenu
//
//  Created by Vitaliy Iakushev on 28.12.2022.
//

import SwiftUI

struct MenuItemDetailsView: View {
    var menuItem: MenuItem
    
    var body: some View {
        VStack {
            Text("Food 5")
                .font(.system(size: 36))
                .bold()
                .frame(maxWidth: .infinity, alignment: .leading)
                .padding()
            
            Image("Little Lemon logo")
                .resizable()
                .aspectRatio(contentMode: .fit)
                .padding([.leading, .trailing], 80)
                .padding(.bottom)
            
            Text("Price:")
                .font(.title3)
                .bold()
            Text("10.99")
                .font(.title3)
                .padding(.bottom)
                
            Text("Ordered:")
                .font(.title3)
                .bold()
            Text("1,000")
                .font(.title3)
                .padding(.bottom)
            
            Text("Ingredients")
                .font(.title3)
                .bold()
            Text("spinach \n broccoli \n carrot \n pasta")
                .frame(maxWidth: .infinity, alignment: .center)
                .font(.title3)
                .padding(.bottom)
            // later make ForEach for array of ingredients
                
            
        }
        
    }
}

struct MenuItemDetailsView_Previews: PreviewProvider {
    static var previews: some View {
        MenuItemDetailsView(menuItem: MenuItem(title: "Test", menuCategory: .Food, ordersCount: 4, price: 3.5, ingredients: [Ingredient.Broccoli, Ingredient.Pasta]))
    }
}
