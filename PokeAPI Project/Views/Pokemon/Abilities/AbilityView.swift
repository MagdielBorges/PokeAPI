//
//  AbilityView.swift
//  PokeAPI Project
//
//  Created by Magdiel Borges on 5/5/22.
//

import SwiftUI

struct AbilityView: View {
    let url: String
    @StateObject var viewModel = AbilityVM()
    var mainView: some View {
        Form {
            Section("Originated From") {
                ResourceNavigationLink(endPoint: .generation, result: viewModel.ability!.generation)
            }
            Text("Main Series: \(viewModel.ability!.isMainSeries ? "Yes" : "No")")
            Section("Effect") {
                let englishEffect = viewModel.ability!.effectEntries.first(where: { $0.language.name == "en"})
                Text(englishEffect?.shortEffect ?? "No English Effect Found.")
            }
            if !viewModel.ability!.effectChanges.isEmpty {
                Section("Past Effects") {
                    ForEach(viewModel.ability!.effectChanges, id: \.self) { abilityEffectChange in
                        let versionGroup = abilityEffectChange.versionGroup.name.capitalized
                        let englishEffect = abilityEffectChange.effectEntries.first(where: { $0.language.name == "en" })
                        Text("\(versionGroup): \(englishEffect?.effect ?? "No English Effect Found")")
                    }
                }
            }
            Section("Flavor Text") {
                let englishFlavorText = viewModel.ability!.flavorTextEntries.first(where: { $0.language.name == "en" })
                Text(englishFlavorText?.flavorText ?? "No English Flavor Text Found.")
            }
            Section("Pokemon with this ability") {
                ForEach(viewModel.ability!.pokemon, id: \.self) { abilityPokemon in
                    if !abilityPokemon.isHidden {
                        ResourceNavigationLink(endPoint: .pokemon, result: abilityPokemon.pokemon)
                    }
                }
            }
            if viewModel.ability!.pokemon.filter { $0.isHidden == true }.count > 0 {
                Section("Pokemon with this Hidden Ability") {
                    ForEach(viewModel.ability!.pokemon, id: \.self) { abilityPokemon in
                        if abilityPokemon.isHidden {
                            ResourceNavigationLink(endPoint: .pokemon, result: abilityPokemon.pokemon)
                        }
                    }
                }
            }
        }
        .navigationTitle("Ability: \(viewModel.ability!.name.cleanedUp())")
        .navigationBarTitleDisplayMode(.inline)
    }
    var body: some View {
        Group {
            switch viewModel.errorLoading {
            case true:
                FailedToLoadView(url: url)
            case false:
                switch viewModel.dataLoaded {
                case true:
                    mainView
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

struct AbilityView_Previews: PreviewProvider {
    static var previews: some View {
        NavigationView {
            AbilityView(url: "https://pokeapi.co/api/v2/ability/1/")
        }
    }
}
