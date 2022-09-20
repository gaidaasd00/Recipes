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
                        CategoryView(category: category)
                    } label: {
                        Text(category.rawValue + "s")
                    }
                }
            }
                .navigationTitle("Catigories")
        }
    }
}


    struct CategoriesView_Previews: PreviewProvider {
        static var previews: some View {
            CategoriesView()
        }
}

