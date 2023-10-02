//  /*
//
//  Project: Rick&Morty
//  File: DetailView.swift
//  Created by: Elaidzha Shchukin
//  Date: 02.10.2023
//
//  */

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
