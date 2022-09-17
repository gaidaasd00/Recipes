//
//  NewRecepeView.swift
//  Recipes
//
//  Created by Алексей Гайдуков on 17.09.2022.
//

import SwiftUI

struct NewRecepeView: View {
    var body: some View {
        NavigationView {
            Text("New Recipe")
                .navigationTitle("New Recipe")
        }
    }
}

struct NewRecepeView_Previews: PreviewProvider {
    static var previews: some View {
        NewRecepeView()
    }
}
