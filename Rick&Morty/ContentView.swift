//  /*
//
//  Project: Rick&Morty
//  File: ContentView.swift
//  Created by: Elaidzha Shchukin
//  Date: 02.10.2023
//
//  */

import SwiftUI
import Alamofire

struct Character: Identifiable, Decodable {
    let id: Int
    let name: String
    let status: String
}

struct CharacterResponse: Decodable {
    let results: [Character]
}

struct ContentView: View {
    @State private var characters: [Character] = []

    var body: some View {
        NavigationView {
            List(characters) { character in
                VStack(alignment: .leading) {
                    Text(character.name)
                        .font(.headline)
                    Text(character.status)
                        .font(.subheadline)
                        .foregroundColor(.gray)
                }
            }
            .navigationTitle("Rick and Morty Characters")
            .onAppear(perform: loadData)
        }
    }

    func loadData() {
        AF.request("https://rickandmortyapi.com/api/character")
            .validate()
            .responseDecodable(of: CharacterResponse.self) { response in
                switch response.result {
                case .success(let characterResponse):
                    self.characters = characterResponse.results
                case .failure(let error):
                    print("Error loading data: \(error)")
                }
            }
    }
}

#Preview {
    ContentView()
}
