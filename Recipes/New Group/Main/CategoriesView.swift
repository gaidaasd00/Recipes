//
//  CategoriesView.swift
//  Recipes
//
//  Created by Алексей Гайдуков on 17.09.2022.
//

import SwiftUI

struct CategoriesView: View {
    var body: some View {
        NavigationView {
            List {
                ForEach(Category.allCases) { category in
                    NavigationLink {
                        ScrollView {
                            RecipeListView(recipes: Recipes.all.filter($0 == category.rowValue))
                        }
                    } leble
                    Text(category.rawValue + "s")
                    
                }
            }
            .navigationTitle("Categories")
        }
    }
}

struct CategoriesView_Previews: PreviewProvider {
    static var previews: some View {
        CategoriesView()
    }
}
