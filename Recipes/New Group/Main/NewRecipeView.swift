//
//  NewRecepeView.swift
//  Recipes
//
//  Created by Алексей Гайдуков on 17.09.2022.
//

import SwiftUI

struct NewRecipeView: View {
    @State private var showAddRecipe = false
    var body: some View {
        NavigationView {
            Button("Add recipe") {
                showAddRecipe.toggle()
            }
                .navigationTitle("New Recipe")
                .sheet(isPresented: $showAddRecipe) {
                    AddRecipeView()
                }
        }
    }
}

struct NewRecipeView_Previews: PreviewProvider {
    static var previews: some View {
        NewRecipeView()
    }
}
