//
//  RecepeView.swift
//  Recipes
//
//  Created by Алексей Гайдуков on 19.09.2022.
//

import SwiftUI

struct RecipeView: View {
    let recipe: Recipe
    var body: some View {
        ScrollView {
            AsyncImage(url: URL(string: recipe.image)) { image in
                image
                    .resizable()
                    .aspectRatio(contentMode: .fill)
            } placeholder: {
                Image(systemName: "photo")
                    .resizable()
                    .scaledToFit()
                    .frame(width: 100, height: 100, alignment: .center)
                    .foregroundColor(.white.opacity(0.7))
                    .frame(maxWidth: .infinity, maxHeight: .infinity)
            }
            .frame(height: 300)
            background(
                LinearGradient(
                    gradient: Gradient(colors: [.gray.opacity(0.3), .yellow]),
                    startPoint: .top,
                    endPoint: .bottom)
            )
            
            VStack(spacing: 30) {
                Text(recipe.name)
                    .font(.largeTitle)
                    .bold()
                    .multilineTextAlignment(.center)
                
                VStack(alignment: .leading,spacing: 20) {
                    if !recipe.discription.isEmpty {
                        Text(recipe.discription)
                    }
                    if !recipe.ingredients.isEmpty {
                        VStack(alignment: .leading,spacing: 20) {
                            Text("Ingredients")
                                .font(.headline)
                            Text(recipe.ingredients)
                        }
                    }
                    if !recipe.directions.isEmpty {
                        VStack(alignment: .leading, spacing: 20) {
                            Text("Directions")
                            Text(recipe.directions)
                        }
                    }
                }
                .frame(maxWidth: .infinity, alignment: .leading)
            }
            .padding(.horizontal)
        }
        .ignoresSafeArea(.container,edges: .top)
    }
}


struct RecipeView_Previews: PreviewProvider {
    static var previews: some View {
        RecipeView(recipe: Recipe.all[0])
    }
}
