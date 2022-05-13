//
//  PokemonSpeciesVM.swift
//  PokeAPI Project
//
//  Created by Magdiel Borges on 5/4/22.
//

import Foundation

class PokemonSpeciesVM: ObservableObject {
    @Published var dataLoaded = false
    @Published var pokemonSpecies: PokemonSpecies?
    @Published var defaultPokemon: Pokemon?
    @Published var evolutionChain: EvolutionChain?
    
    func loadData(url: String) async {
        do {
            let (data, _) = try await URLSession.shared.data(from: URL(string: url)!)
            let decodedResponse = try? JSONDecoder().decode(PokemonSpecies.self, from: data)
            
            if let safeData = decodedResponse {
                DispatchQueue.main.async {
                    self.pokemonSpecies = safeData
//                    self.dataLoaded = true
                    print("Species Data Decoded Successfully")
                }
                await loadDefaultVariety(safeData: safeData)
            } else {
                print("Species Data Not Decoded")
            }
        } catch {
            print(error)
        }
    }
    
    func loadDefaultVariety(safeData: PokemonSpecies) async {
        let url = safeData.varieties.first(where: { $0.isDefault})?.pokemon.url
        do {
            let (data, _) = try await URLSession.shared.data(from: URL(string: url ?? "")!)
            let decodedResponse = try? JSONDecoder().decode(Pokemon.self, from: data)
            
            if let newSafeData = decodedResponse {
                DispatchQueue.main.async {
                    self.defaultPokemon = newSafeData
                    //self.dataLoaded = true
                    print("Default Pokemon Decoded Successfully")
                }
                await loadEvolutionChain(safeData: safeData)
            } else {
                print("Default Pokemon Data Not Decoded")
            }
        } catch {
            print(error)
        }
    }
    func loadEvolutionChain(safeData: PokemonSpecies) async {
        let url = safeData.evolutionChain.url
        do {
            let (data, _) = try await URLSession.shared.data(from: URL(string: url)!)
            let decodedResponse = try? JSONDecoder().decode(EvolutionChain.self, from: data)
            
            if let safeData = decodedResponse {
                DispatchQueue.main.async {
                    self.evolutionChain = safeData
                    self.dataLoaded = true
                    print("Evolution Chain Data Decoded Successfully")
                }
            } else {
                print("Evolution Chain Data Not Decoded")
            }
        } catch {
            print(error)
        }
    }
}

extension PokemonSpeciesVM {
    var name: String {
        pokemonSpecies!.name.cleanedUp()
    }
    var baseHappiness: Int {
        pokemonSpecies!.baseHappiness
    }
    var genderRate: String {
        if pokemonSpecies!.genderRate > 0 {
            let genderRate: Double = Double(pokemonSpecies!.genderRate) / Double(8) * Double(100)
            return "\(String(format: "%.1f", genderRate))%"
        } else {
            return "Genderless"
        }
    }
    
    var captureRate: Int {
        pokemonSpecies!.captureRate
    }
    
    var isBaby: String {
        pokemonSpecies!.isBaby ? "Yes" : "No"
    }
    
    var isLegendary: String {
        pokemonSpecies!.isLegendary ? "Yes" : "No"
    }
    
    var isMythical: String {
        pokemonSpecies!.isMythical ? "Yes" : "No"
    }
    
    //MARK: - Sprites
    
    var defaultFrontSprite: String? {
        defaultPokemon!.sprites.frontDefault
    }
    var defaultBackSprite: String? {
        defaultPokemon!.sprites.backDefault
    }
    var femaleFrontSprite: String? {
        defaultPokemon!.sprites.frontFemale
    }
    var femaleBackSprite: String? {
        defaultPokemon!.sprites.backFemale
    }
    var shinyFrontSprite: String? {
        defaultPokemon!.sprites.frontShiny
    }
    var shinyBackSprite: String? {
        defaultPokemon!.sprites.backShiny
    }
    var shinyFrontFemaleSprite: String? {
        defaultPokemon!.sprites.frontShinyFemale
    }
    var shinyBackFemaleSprite: String? {
        defaultPokemon!.sprites.backShinyFemale
    }
}
