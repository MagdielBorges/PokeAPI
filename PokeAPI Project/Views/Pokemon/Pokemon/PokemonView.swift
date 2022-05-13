//
//  PokemonView.swift
//  PokeAPI Project
//
//  Created by Magdiel Borges on 5/4/22.
//

import SwiftUI

struct PokemonView: View {
    let url: String
    @StateObject var viewModel = PokemonVM()
    var mainView: some View {
        Form {
            defaultSprites
            shinySprites
            basicInfo
            typeList
            speciesInfo
            formsSection
            abilities
            heldItemsSection
            moveList
        }
        .navigationTitle(viewModel.name)
        .navigationBarTitleDisplayMode(.inline)
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
    var defaultSprites: some View {
        Section("Normal") {
            ScrollView(.horizontal, showsIndicators: false) {
                HStack {
                    LinkedImageView(url: viewModel.frontDefault)
                    LinkedImageView(url: viewModel.backDefault)
                    Divider()
                        .frame(height: 96)
                    LinkedImageView(url: viewModel.frontFemale)
                    LinkedImageView(url: viewModel.backFemale)
                }
            }
        }
    }
    var shinySprites: some View {
        Section("Shiny") {
            ScrollView(.horizontal, showsIndicators: false) {
                HStack {
                    LinkedImageView(url: viewModel.frontShiny)
                    LinkedImageView(url: viewModel.backShiny)
                    Divider()
                        .frame(height: 96)
                    LinkedImageView(url: viewModel.frontShinyFemale)
                    LinkedImageView(url: viewModel.backShinyFemale)
                }
            }
        }
    }
    var basicInfo: some View {
        Section("Basic Info") {
            Text("Base Experience: \(viewModel.baseExperience)")
            Text("Height: \(viewModel.height)")
            Text("Weight: \(viewModel.weight)")
        }
    }
    
    var abilities: some View {
        Section("Abilities") {
            ForEach(viewModel.abilities, id: \.self) { pokemonAbility in
                ResourceNavigationLink(endPoint: .ability, result: pokemonAbility.ability)
            }
        }
    }
    var typeList: some View {
        Section("Types") {
            ForEach(viewModel.types, id: \.self) { pokemonType in
                ResourceNavigationLink(endPoint: .type, result: pokemonType.type)
            }
        }
    }
    var moveList: some View {
        Section("Move List") {
            ForEach(viewModel.moves, id: \.self) { pokemonMove in
                ResourceNavigationLink(endPoint: .move, result: pokemonMove.move)
            }
        }
    }
    
    var speciesInfo: some View {
        Section("Species Information") {
            ResourceNavigationLink(endPoint: .pokemonSpecies, result: viewModel.species)
        }
    }
    @ViewBuilder
    var heldItemsSection: some View {
        if viewModel.hasHeldItems {
            Section("Held Items") {
                ForEach(viewModel.pokemon!.heldItems ?? [], id: \.self) { pokemonHeldItem in
                    ResourceNavigationLink(endPoint: .item, result: pokemonHeldItem.item)
                }
            }
        }
    }
    
    var formsSection: some View {
        Section("Forms") {
            ForEach(viewModel.forms, id: \.self) { form in
                ResourceNavigationLink(endPoint: .pokemonForm, result: form)
            }
        }
    }
}

struct PokemonView_Previews: PreviewProvider {
    static var previews: some View {
        NavigationView {
            PokemonView(url: "https://pokeapi.co/api/v2/pokemon/1/")
        }
    }
}
