//
//  PokemonSpeciesView.swift
//  PokeAPI Project
//
//  Created by Magdiel Borges on 5/4/22.
//

import SwiftUI

struct PokemonSpeciesView: View {
    @StateObject var viewModel = PokemonSpeciesVM()
    let url: String
    var mainView: some View {
        Form {
            PokemonSpritesView(viewModel: viewModel)
            varietiesSection
            typesSection
            baseStatsSection
            otherStatsSection
            evolvesFromSection
            evolutionChainSection
            pokedexSection
            learnedMovesSection
        }
        .navigationTitle(viewModel.name)
    }
    var body: some View {
        Group {
            switch viewModel.dataLoaded {
            case true:
                mainView
            case false:
                ProgressView()
            }
        }
        .task {
            await viewModel.loadData(url: url)
        }
    }
    @ViewBuilder
    var varietiesSection: some View {
        if viewModel.pokemonSpecies!.varieties.count > 1 {
            Section("Varieties") {
                ForEach(viewModel.pokemonSpecies!.varieties, id: \.self) { pokemonSpeciesVariety in
                    ResourceNavigationLink(endPoint: .pokemon, result: pokemonSpeciesVariety.pokemon)
                }
            }
        }
    }
    var typesSection: some View {
        Section("Types") {
            ForEach(viewModel.defaultPokemon!.types, id: \.self) { type in
                ResourceNavigationLink(endPoint: .type, result: type.type)
            }
        }
    }
    var baseStatsSection: some View {
        Section("Base Stats") {
            ForEach(viewModel.defaultPokemon!.stats, id: \.self) { stat in
                Text("\(stat.stat.name.uppercased().replacingOccurrences(of: "-", with: " ")): \(stat.baseStat)")
            }
        }
    }
    var otherStatsSection: some View {
        Section("Other Stats") {
            Text("Height: \(viewModel.defaultPokemon!.height)")
            Text("Weight: \(viewModel.defaultPokemon!.weight)")
            Text("Gender Rate: \(viewModel.genderRate)")
            Text("Capture Rate: \(viewModel.pokemonSpecies!.captureRate)")
            Text("Base Happiness: \(viewModel.pokemonSpecies!.baseHappiness)")
            Text("Baby Pokemon: \(viewModel.isBaby)")
            Text("Legendary Pokemon: \(viewModel.isLegendary)")
            Text("Mythical Pokemon: \(viewModel.isMythical)")
        }
    }
    @ViewBuilder
    var evolvesFromSection: some View {
        if viewModel.pokemonSpecies!.evolvesFromSpecies != nil {
            Section("Evolves From") {
                ResourceNavigationLink(endPoint: .pokemonSpecies, result: viewModel.pokemonSpecies!.evolvesFromSpecies!)
            }
        }
    }
    var evolutionChainSection: some View {
        Section("Evolution Chain") {
            if viewModel.evolutionChain?.chain.species != nil {
                let species = viewModel.evolutionChain?.chain.species
                ResourceNavigationLink(endPoint: .pokemonSpecies, result: species!)
                if viewModel.evolutionChain!.chain.evolvesTo?.count ?? 0 > 0 {
                    ForEach(viewModel.evolutionChain!.chain.evolvesTo!, id: \.self) { evolvesTo in
                        ResourceNavigationLink(endPoint: .pokemonSpecies, result: evolvesTo.species)
                        if evolvesTo.evolvesTo != nil {
                            ForEach(evolvesTo.evolvesTo!, id: \.self) { evolvesTo in
                                ResourceNavigationLink(endPoint: .pokemonSpecies, result: evolvesTo.species)
                            }
                        }
                    }
                }
            }
        }
    }
    var pokedexSection: some View {
        Section("Pokedex") {
            ForEach(viewModel.pokemonSpecies!.pokedexNumbers, id: \.self) { pokedex in
                //Text("\(pokedex.pokedex.name.capitalized) #\(pokedex.entryNumber)")
                ResourceNavigationLink(endPoint: .pokedex, result: pokedex.pokedex)

            }
        }
    }
    var learnedMovesSection: some View {
        Section("Learned Moves") {
            ForEach(viewModel.defaultPokemon!.moves, id: \.self) { move in
                ResourceNavigationLink(endPoint: .move, result: move.move)
            }
        }
    }
}

struct PokemonSpeciesView_Previews: PreviewProvider {
    static var previews: some View {
        PokemonSpeciesView(url: "https://pokeapi.co/api/v2/pokemon-species/413")
    }
}
