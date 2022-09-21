//
//  AddRecipeView.swift
//  Recipes
//
//  Created by Алексей Гайдуков on 21.09.2022.
//

import SwiftUI

struct AddRecipeView: View {
    @State private var name: String = ""
    @State private var celectedCategory: Category = Category.main
    @State private var description: String = ""
    @State private var ingredients: String = ""
    @State private var directions: String = ""
    
    @Environment(\.dismiss) var dismiss
    
    var body: some View {
        NavigationView {
            Form {
                Section(header: Text("Name")) {
                    TextField("Recipe Name", text: $name)
                }
                Section(header: Text("Category")) {
                    Picker("Category", selection: $celectedCategory) {
                        ForEach(Category.allCases) { category in
                            Text(category.rawValue)
                                .tag(category)
                        }
                        .pickerStyle(.menu)
                    }
                }
                Section(header: Text("Description")) {
                    TextEditor(text: $description)
                }
                Section(header: Text("Ingredients")) {
                    TextEditor(text: $ingredients)
                }
                Section(header: Text("Directions")) {
                    TextEditor(text: $directions)
                }
            }
        }
        .toolbar(content: {
            ToolbarItem(placement: .navigationBarLeading) {
                Button {
                    dismiss()
                } label: {
                    Label("Cancle", systemImage: "xmark")
                        .labelStyle(.iconOnly)
                }
            }
            
            ToolbarItem {
                NavigationLink(destination: RecipeView(recipe: Recipe.all.sorted{ $0.dataPublishid > $1.dataPublishid} [0])
                    .navigationBarBackButtonHidden(true)) {
                    }
                Button {
                    
                } label: {
                    Label("Done", systemImage: "chekmark")
                        .labelStyle(.iconOnly)
                }
                .disabled(name.isEmpty)
            }
        })
        .navigationTitle("New Recipe")
        .navigationBarTitleDisplayMode(.inline)
    }
}

struct AddRecipeView_Previews: PreviewProvider {
    static var previews: some View {
        AddRecipeView()
    }
}
