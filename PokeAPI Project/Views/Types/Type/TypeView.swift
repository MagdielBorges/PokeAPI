//
//  TypeView.swift
//  PokeAPI Project
//
//  Created by Magdiel Borges on 5/4/22.
//

import SwiftUI

struct TypeView: View {
    let url: String
    @StateObject var viewModel = TypeVM()
    var body: some View {
        switch viewModel.errorLoading {
        case true:
            FailedToLoadView(url: url)
        case false:
            Group {
                switch viewModel.dataLoaded {
                case true:
                    Form {
                        damageRelations
                        listOfPokemon
                    }
                    .navigationTitle(viewModel.type!.name.capitalized)
                case false:
                    ProgressView()
                }
            }
            .task {
                await viewModel.loadData(url: url)
            }
        }
    }
    var damageRelations: some View {
        Section("Damage Relations") {
            GroupBox("Double Damage From") {
                let doubleDamageFrom = viewModel.type!.damageRelations.doubleDamageFrom
                if doubleDamageFrom.isEmpty {
                    Text("None")
                }
                ForEach(doubleDamageFrom, id: \.self) { type in
                    NavigationLink {
                        TypeView(url: type.url)
                    } label: {
                        Text(type.name.capitalized)
                    }
                }
            }
            GroupBox("Double Damage To") {
                let doubleDamageTo = viewModel.type!.damageRelations.doubleDamageTo
                if doubleDamageTo.isEmpty {
                    Text("None")
                }
                ForEach(doubleDamageTo, id: \.self) { type in
                    NavigationLink {
                        TypeView(url: type.url)
                    } label: {
                        Text(type.name.capitalized)
                    }
                }
            }
            GroupBox("Half Damage From") {
                let halfDamageFrom = viewModel.type!.damageRelations.halfDamageFrom
                if halfDamageFrom.isEmpty {
                    Text("None")
                }
                ForEach(halfDamageFrom, id: \.self) { type in
                    NavigationLink {
                        TypeView(url: type.url)
                    } label: {
                        Text(type.name.capitalized)
                    }
                }
            }
            GroupBox("Half Damage To") {
                let halfDamageTo = viewModel.type!.damageRelations.halfDamageTo
                if halfDamageTo.isEmpty {
                    Text("None")
                }
                ForEach(halfDamageTo, id: \.self) { type in
                    NavigationLink {
                        TypeView(url: type.url)
                    } label: {
                        Text(type.name.capitalized)
                    }
                }
            }
            GroupBox("No Damage From") {
                let noDamageFrom = viewModel.type!.damageRelations.noDamageFrom
                if noDamageFrom.isEmpty {
                    Text("None")
                }
                ForEach(noDamageFrom, id: \.self) { type in
                    NavigationLink {
                        TypeView(url: type.url)
                    } label: {
                        Text(type.name.capitalized)
                    }
                }
            }
            if viewModel.type!.damageRelations.noDamageTo != nil {
                GroupBox("No Damage To") {
                    let noDamageTo = viewModel.type!.damageRelations.noDamageTo!
                    if noDamageTo.isEmpty {
                        Text("None")
                    }
                    ForEach(noDamageTo, id: \.self) { type in
                        NavigationLink {
                            TypeView(url: type.url)
                        } label: {
                            Text(type.name.capitalized)
                        }
                    }
                }
            }
        }
    }
    var listOfPokemon: some View {
        Section("Pokemon of this type") {
            ForEach(viewModel.type!.pokemon, id: \.self) { typePokemon in
                NavigationLink {
                    PokemonView(url: typePokemon.pokemon.url)
                } label: {
                    Text(typePokemon.pokemon.name.cleanedUp())
                }
            }
        }
    }
}

struct TypeView_Previews: PreviewProvider {
    static var previews: some View {
        NavigationView {
            TypeView(url: "https://pokeapi.co/api/v2/type/1")
        }
    }
}
