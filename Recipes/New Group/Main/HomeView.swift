//
//  HomeView.swift
//  Recipes
//
//  Created by Алексей Гайдуков on 17.09.2022.
//

import SwiftUI

struct HomeView: View {
    var body: some View {
        NavigationView {
            Text("My Recipes")
                .navigationTitle("My Recipes")
        }
    }
}

struct HomeView_Previews: PreviewProvider {
    static var previews: some View {
        HomeView()
    }
}
