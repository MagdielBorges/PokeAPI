//
//  PrototypeView.swift
//  PokeAPI Project
//
//  Created by Magdiel Borges on 5/5/22.
//

import SwiftUI

struct PrototypeView: View {
    let id: String
    @StateObject var pokemon = PrototypeVM()
    
    var mainView: some View {
        Form {
            ScrollView(.horizontal, showsIndicators: false) {
                HStack {
                    LinkedImageView(url: pokemon.pokemon!.sprites.frontDefault)
                    LinkedImageView(url: pokemon.pokemon!.sprites.backDefault)
                    if pokemon.pokemonSpecies!.hasGenderDifferences {
                        Divider()
                            .frame(height: 96)
                        LinkedImageView(url: pokemon.pokemon!.sprites.frontFemale)
                        LinkedImageView(url: pokemon.pokemon!.sprites.backFemale)
                    }
                }
            }
            if pokemon.pokemon!.forms.count > 1 {
                DisclosureGroup {
                    ForEach(pokemon.pokemon!.forms.dropFirst(), id: \.self) { form in
                        ResourceNavigationLink(endPoint: .pokemonForm, result: form)
                        Text("WIP: I need to make simple views to show the sprites for the forms.")
                    }
                } label: {
                    Text("Other Forms")
                }
            }
            if pokemon.pokemonSpecies!.varieties.count > 1 {
                DisclosureGroup {
                    ForEach(pokemon.pokemonSpecies!.varieties.dropFirst(), id: \.self) { variety in
                        Text(variety.pokemon.name.capitalized.replacingOccurrences(of: "-", with: " "))
                        Text("WIP: I need to make simple views to show the sprites for the varieties, and maybe base stats and junk.")
                    }
                } label: {
                    Text("Other Varieties")
                }
            }
            Section("Types") {
                ForEach(pokemon.pokemon!.types, id: \.self) { type in
                    ResourceNavigationLink(endPoint: .type, result: type.type)
                }
            }
            Section("Base Stats") {
                ForEach(pokemon.pokemon!.stats, id: \.self) { stat in
                    Text("\(stat.stat.name.uppercased().replacingOccurrences(of: "-", with: " ")): \(stat.baseStat)")
                }
            }
            Section("Other Stats") {
                Text("Height: \(pokemon.pokemon!.height)")
                Text("Weight: \(pokemon.pokemon!.weight)")
                Text("Gender Rate: \(pokemon.genderRate)")
                Text("Capture Rate: \(pokemon.pokemonSpecies!.captureRate)")
                Text("Base Happiness: \(pokemon.pokemonSpecies!.baseHappiness)")
                
            }
            if pokemon.pokemonSpecies!.evolvesFromSpecies != nil {
                Section("Evolves From") {
                    NavigationLink {
                        PrototypeView(id: pokemon.pokemonSpecies!.evolvesFromSpecies!.name)
                    } label: {
                        Text(pokemon.pokemonSpecies!.evolvesFromSpecies!.name.capitalized.replacingOccurrences(of: "-", with: " "))
                    }
                }
            }
            
            Section("Learned Moves") {
                ForEach(pokemon.pokemon!.moves, id: \.self) { move in
                    ResourceNavigationLink(endPoint: .move, result: move.move)
                }
            }
        }
        .navigationTitle(pokemon.pokemon!.name.capitalized.replacingOccurrences(of: "-", with: " "))
    }
}

extension PrototypeView {
    var body: some View {
        Group {
            switch pokemon.errorLoading {
            case true:
                VStack {
                    Text("Something failed along the way. Also, get around to making a clearer error screen...")
                        .foregroundColor(.secondary)
                    Text("ID: \(id)")
                        .foregroundColor(.secondary)
                }
            case false:
                switch pokemon.loaded {
                case true:
                    mainView
                case false:
                    ProgressView()
                }
            }
        }
        .task {
            await pokemon.loadData(for: id)
        }
    }
}

struct PrototypeView_Previews: PreviewProvider {
    static var previews: some View {
        NavigationView {
            PrototypeView(id: "pikachu")
        }
    }
}
