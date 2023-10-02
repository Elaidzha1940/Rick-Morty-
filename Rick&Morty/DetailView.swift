//
//  DetailView.swift
//  Rick&Morty
//
//  Created by Elaidzha Shchukin on 02.10.2023.
//

import SwiftUI

struct DetailView: View {
    let character: Character

    var body: some View {
        VStack {
            Text("Name: \(character.name)")
                .font(.headline)
            Text("Status: \(character.status)")
                .font(.subheadline)
                .foregroundColor(.gray)
        }
        .navigationTitle("Character Detail")
    }
}

#Preview {
    DetailView(character: Character(id: 1, name: "Rick", status: "Alive"))
}
