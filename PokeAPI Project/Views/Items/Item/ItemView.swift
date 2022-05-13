//
//  ItemView.swift
//  PokeAPI Project
//
//  Created by Magdiel Borges on 5/4/22.
//

import SwiftUI

struct ItemView: View {
    let url: String
    @StateObject var viewModel = ItemVM()
    var body: some View {
        Group {
            switch viewModel.errorLoading {
            case true:
                FailedToLoadView(url: url)
            case false:
                switch viewModel.dataLoaded {
                case true:
                    Form {
                        itemSprite
                        heldBySection
                    }
                    .navigationTitle(viewModel.item!.name.cleanedUp())
                case false:
                    ProgressView()
                }
            }
        }
        .task {
            await viewModel.loadData(url: url)
        }
    }
    
    var itemSprite: some View {
        HStack {
            Spacer()
            LinkedImageView(url: viewModel.item!.sprites.default)
            Spacer()
        }
    }
    
    @ViewBuilder
    var heldBySection: some View {
        if viewModel.item!.heldByPokemon != nil {
            Section("Held By") {
                if (viewModel.item!.heldByPokemon ?? []).isEmpty {
                    Text("None")
                }
                ForEach(viewModel.item!.heldByPokemon!, id: \.self) { itemHolderPokemon in
                    ResourceNavigationLink(endPoint: .pokemon, result: itemHolderPokemon.pokemon)
                }
            }
        }
    }
}

struct ItemView_Previews: PreviewProvider {
    static var previews: some View {
        ItemView(url: "https://pokeapi.co/api/v2/item/1")
    }
}
