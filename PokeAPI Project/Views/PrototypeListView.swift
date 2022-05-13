//
//  PrototypeListView.swift
//  PokeAPI Project
//
//  Created by Magdiel Borges on 5/6/22.
//

import SwiftUI

struct PrototypeListView: View {
    var body: some View {
        List {
            EndPointNavigationLink(title: "Pokemon", endPoint: .pokemonSpecies)
            EndPointNavigationLink(title: "Pokedex", endPoint: .pokedex)
            EndPointNavigationLink(title: "Moves", endPoint: .move)
            EndPointNavigationLink(title: "Abilities", endPoint: .ability)
            EndPointNavigationLink(title: "Types", endPoint: .type)
            EndPointNavigationLink(title: "Items", endPoint: .item)
            EndPointNavigationLink(title: "Berries", endPoint: .berry)
        }
        .navigationTitle("PokeAPI Project")
    }
}

struct PrototypeListView_Previews: PreviewProvider {
    static var previews: some View {
        PrototypeListView()
    }
}
