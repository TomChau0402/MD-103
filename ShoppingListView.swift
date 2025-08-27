//
//  ShoppingListView.swift
//  103 Course //

import SwiftUI

struct ShoppingListView: View {
    @State private var shoppingList: [String] = ["Milk","Eggs", "Bread", "Apple"]
    @State private var newItem: String = ""
    
    var body: some View {
        NavigationStack {
            List {
                ForEach(shoppingList, id: \.self) { item in
                    Text(item)}
                
                HStack {
                    TextField("Add item", text: $newItem)
                        .font(.custom("Poppins-Medium", size: 30))
                    
                    Button(action: {
                        //action
                    }) {
                        Image(systemName: "plus")
                        
                    }
                }
                
            }
            .navigationTitle("Shopping List")
        }
    }
}
#Preview {
    ShoppingListView()
}
