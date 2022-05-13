//
//  PokemonFormView.swift
//  PokeAPI Project
//
//  Created by Magdiel Borges on 5/4/22.
//

import SwiftUI

struct PokemonFormView: View {
    let url: String
    @StateObject var viewModel = PokemonFormVM()
    var body: some View {
        Group {
            switch viewModel.errorLoading {
            case true:
                FailedToLoadView(url: url)
            case false:
                switch viewModel.dataLoaded {
                case true:
                    Form {
                        formSprites
                        ResourceNavigationLink(endPoint: .pokemon, result: viewModel.pokemonForm!.pokemon)
                    }
                    .navigationTitle(viewModel.pokemonForm!.name.cleanedUp())
                case false:
                    ProgressView()
                }
            }
        }
        .task {
            await viewModel.loadData(url: url)
        }
    }
    
    @ViewBuilder
    var formSprites: some View {
        Section("Normal") {
            ScrollView(.horizontal, showsIndicators: false) {
                HStack {
                    LinkedImageView(url: viewModel.pokemonForm!.sprites.frontDefault)
                    LinkedImageView(url: viewModel.pokemonForm!.sprites.backDefault ?? "")
                    Divider().frame(height: 96)
                    LinkedImageView(url: viewModel.pokemonForm!.sprites.frontFemale ?? "")
                    LinkedImageView(url: viewModel.pokemonForm!.sprites.backFemale ?? "")
                }
            }
        }
        Section("Shiny") {
            ScrollView(.horizontal, showsIndicators: false) {
                HStack {
                    LinkedImageView(url: viewModel.pokemonForm!.sprites.frontShiny)
                    LinkedImageView(url: viewModel.pokemonForm!.sprites.backShiny ?? "")
                    Divider().frame(height: 96)
                    LinkedImageView(url: viewModel.pokemonForm!.sprites.frontShinyFemale ?? "")
                    LinkedImageView(url: viewModel.pokemonForm!.sprites.backShinyFemale ?? "")
                }
            }
        }
    }
}

struct PokemonFormView_Previews: PreviewProvider {
    static var previews: some View {
        PokemonFormView(url: "https://pokeapi.co/api/v2/pokemon-form/1")
    }
}
