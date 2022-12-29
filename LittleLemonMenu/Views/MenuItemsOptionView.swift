//
//  MenuItemsOptionView.swift
//  LittleLemonMenu
//
//  Created by Vitaliy Iakushev on 28.12.2022.
//

import SwiftUI

enum sortingCategory: String, CaseIterable {
    case MostPopular = "Most Popular"
    case ByPrice = "$-$$$"
    case ByAlphabet  = "A-Z"
}

struct MenuItemsOptionView: View {
    var body: some View {
        VStack {
//            NavigationView {
//
//            }
            List {
                Text("Filter")
                    .font(.title)
                    .frame(maxWidth: .infinity, alignment: .leading)
                    .bold()
//                    .padding()
                
                Section(header: Text("SELECTED CATEGORIES")) {
                    ForEach(MenuCategory.allCases, id: \.self) { food in
                        Button {
                            // some action will be here
                        } label: {
                            Text(food.rawValue)
                        }
                    
                    }
                   
                }
                Section(header: Text("SORT BY")) {
                    ForEach(sortingCategory.allCases, id: \.self) { sortBy in
                        Button {
                            // some action will be here
                        } label: {
                            Text(sortBy.rawValue)
                        }

                    }
                }
            }
        }
    }
}

struct MenuItemsOptionView_Previews: PreviewProvider {
    static var previews: some View {
        MenuItemsOptionView()
    }
}
