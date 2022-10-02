//
//  RecepeListView.swift
//  Recipes
//
//  Created by Алексей Гайдуков on 18.09.2022.
//

import SwiftUI

struct RecipeListView: View {
    let recipes: [Recipe]
    
    var body: some View {
        VStack {
            HStack {
                Text("\(recipes.count) \(recipes.count > 1 ? "Recipes" : "Resepe")")
                    .font(.title)
                    .fontWeight(.medium)
                    .opacity(0.7)
                Spacer()
            }
            LazyVGrid(columns: [GridItem(.adaptive(minimum: 160),spacing: 15)], spacing: 15) {
                ForEach(recipes) { recepe in
                    NavigationLink(destination: RecipeView(recipe: recepe)) {
                        RecipeCardView(recipe: recepe)
                    }
                }
            }
            .padding(.top)
        }
        .padding(.horizontal)
    }
}

struct RecipeListView_Previews: PreviewProvider {
    static var previews: some View {
        ScrollView {
            RecipeListView(recipes: Recipe.all)
        }
    }
}
