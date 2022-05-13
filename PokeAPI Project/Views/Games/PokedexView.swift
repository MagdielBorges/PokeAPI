//
//  PokedexView.swift
//  PokeAPI Project
//
//  Created by Magdiel Borges on 5/4/22.
//

import SwiftUI

struct PokedexView: View {
    let url: String
    @StateObject var viewModel = PokedexVM()
    var body: some View {
        Group {
            switch viewModel.errorLoading {
            case true:
                FailedToLoadView(url: url)
            case false:
                switch viewModel.dataLoaded {
                case true:
                    Form {
                        Section("Basic Info") {
                            Text("Main Series: \(viewModel.pokedex!.isMainSeries ? "Yes" : "No")")
                            if viewModel.pokedex!.region != nil {
                                ResourceNavigationLink(endPoint: .region, result: viewModel.pokedex!.region!)
                            }
                        }
                        Section("Pokemon") {
                            ForEach(viewModel.pokedex!.pokemonEntries, id: \.self) { entry in
                                ResourceNavigationLink(endPoint: .pokemonSpecies, result: entry.pokemonSpecies)
                            }
                        }
                    }
                    .navigationTitle(viewModel.pokedex!.name.cleanedUp())
                case false:
                    ProgressView()
                }
            }
        }
        .task {
            await viewModel.loadData(url: url)
        }
    }
}

struct PokedexView_Previews: PreviewProvider {
    static var previews: some View {
        PokedexView(url: "https://pokeapi.co/api/v2/pokedex/1")
    }
}
