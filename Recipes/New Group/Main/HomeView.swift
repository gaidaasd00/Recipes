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
            ScrollView {
                RecepeListView(recepes: Recepe.all)
            }
            .navigationTitle("My Recepes")
        }
    }
}

struct HomeView_Previews: PreviewProvider {
    static var previews: some View {
        HomeView()
    }
}
