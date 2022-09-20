//
//  CategoryView.swift
//  Recipes
//
//  Created by Алексей Гайдуков on 20.09.2022.
//

import SwiftUI

struct CategoryView: View {
    let category: Category
        //Computed property
    var recipes: [Recipe] {
        Recipe.all.filter{ $0.category == category.rawValue }
    }
    
    var body: some View {
        ScrollView {
            RecipeListView(recipes: recipes)
             
        }
        .navigationTitle(category.rawValue + "s")
    }
}

struct CategoryView_Previews: PreviewProvider {
    static var previews: some View {
        CategoryView(category: Category.breakfast)
    }
}
