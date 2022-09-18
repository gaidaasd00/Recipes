//
//  RecepeCardView.swift
//  Recipes
//
//  Created by Алексей Гайдуков on 18.09.2022.
//

import SwiftUI

struct RecepeCardView: View {
    var recepe: Recepe
    var body: some View {
        VStack {
            AsyncImage(url: URL(string: recepe.image)) { image in
                image
                    .resizable()
                    .aspectRatio(contentMode: .fill)
                    .overlay {
                        Text(recepe.name)
                            .font(.headline)
                            .foregroundColor(.white)
                            .frame(minWidth: 136)
                            .shadow(color: .black, radius: 3)
                            .padding()
                    }
            } placeholder: {
                Image(systemName: "photo")
                    .resizable()
                    .scaledToFit()
                    .frame(width: 40, height: 40, alignment: .center)
                    .foregroundColor(.white.opacity(0.7))
                    .frame(maxWidth: .infinity, maxHeight: .infinity)
                Text(recepe.name)
                    .font(.headline)
                    .foregroundColor(.white)
                    .frame(minWidth: 136)
                    .shadow(color: .black, radius: 3)
                    .padding()
            }
        }
        .frame(width: 160, height: 217, alignment: .top)
        .background(
            LinearGradient(
                gradient: Gradient(colors: [.gray.opacity(0.3), .yellow]),
                startPoint: .top,
                endPoint: .bottom)
        )
        .clipShape(RoundedRectangle(cornerRadius: 20, style: .continuous))
        .shadow(color: .black.opacity(0.3), radius: 15, x: 0, y: 10)
    }
}

struct RecepeCardView_Previews: PreviewProvider {
    static var previews: some View {
        RecepeCardView(recepe: Recepe.all[0])
    }
}
