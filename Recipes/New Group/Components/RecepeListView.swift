//
//  RecepeListView.swift
//  Recipes
//
//  Created by Алексей Гайдуков on 18.09.2022.
//

import SwiftUI

struct RecepeListView: View {
    let recepes: [Recepe]
    
    var body: some View {
        VStack {
            HStack {
                Text("\(recepes.count) \(recepes.count > 1 ? "Recepes" : "Resepe")")
                    .font(.headline)
                    .fontWeight(.medium)
                    .opacity(0.7)
                
                Spacer()
            }
            LazyVGrid(columns: [GridItem(.adaptive(minimum: 160),spacing: 15)], spacing: 15) {
                ForEach(recepes) { recepe in
                    RecepeCardView(recepe: recepe)
                }
            }
            .padding(.top)
        }
        .padding(.horizontal)
    }
}

struct RecepeListView_Previews: PreviewProvider {
    static var previews: some View {
        ScrollView {
            RecepeListView(recepes: Recepe.all)
        }
    }
}
