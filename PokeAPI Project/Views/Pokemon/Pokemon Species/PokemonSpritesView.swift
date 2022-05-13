//
//  PokemonSpritesView.swift
//  PokeAPI Project
//
//  Created by Magdiel Borges on 5/6/22.
//

import SwiftUI

struct PokemonSpritesView: View {
    @ObservedObject var viewModel: PokemonSpeciesVM
    var body: some View {
        Section {
            ScrollView(.horizontal, showsIndicators: false) {
                HStack {
                    VStack {
                        Text("Normal")
                        HStack {
                            LinkedImageView(url: viewModel.defaultFrontSprite)
                            LinkedImageView(url: viewModel.defaultBackSprite)
                            if viewModel.pokemonSpecies!.hasGenderDifferences {
                                Divider().frame(height: 96)
                                LinkedImageView(url: viewModel.femaleFrontSprite)
                                LinkedImageView(url: viewModel.femaleBackSprite)
                            }
                        }
                    }
                    Divider()
                    VStack {
                        Text("Shiny")
                        HStack {
                            LinkedImageView(url: viewModel.shinyFrontSprite)
                            LinkedImageView(url: viewModel.shinyBackSprite)
                            if viewModel.pokemonSpecies!.hasGenderDifferences {
                                Divider().frame(height: 96)
                                LinkedImageView(url: viewModel.shinyFrontFemaleSprite)
                                LinkedImageView(url: viewModel.shinyBackFemaleSprite)
                            }
                        }
                    }
                }
            }
        }
    }
}

struct PokemonSpritesView_Previews: PreviewProvider {
    static var previews: some View {
        PokemonSpritesView(viewModel: PokemonSpeciesVM())
    }
}
