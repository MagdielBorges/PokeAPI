//
//  PokemonVM.swift
//  PokeAPI Project
//
//  Created by Magdiel Borges on 5/4/22.
//

import Foundation

class PokemonVM: ObservableObject {
    @Published var dataLoaded = false
    @Published var pokemon: Pokemon?
    
    func loadData(url: String) async {
        do {
            let (data, _) = try await URLSession.shared.data(from: URL(string: url)!)
            let decodedResponse = try? JSONDecoder().decode(Pokemon.self, from: data)
            
            if let safeData = decodedResponse {
                DispatchQueue.main.async {
                    self.pokemon = safeData
                    self.dataLoaded = true
                    print("Data Decoded Successfully")
                }
            } else {
                print("Data Not Decoded")
            }
        } catch {
            print(error)
        }
    }
}

extension PokemonVM {
    var name: String {
        pokemon!.name.cleanedUp()
    }
    //MARK: - Stats
    var baseExperience: Int {
        pokemon!.baseExperience
    }
    var height: Int {
        pokemon!.height
    }
    var weight: Int {
        pokemon!.weight
    }
    //MARK: - Species
    var species: NamedAPIResource {
        pokemon!.species
    }
    //MARK: - Types
    var types: [PokemonType] {
        pokemon!.types
    }
    //MARK: - Moves
    var moves: [PokemonMove] {
        pokemon!.moves
    }
    //MARK: - Abilties
    var abilities: [PokemonAbility] {
        pokemon!.abilities
    }
    //MARK: - Sprites
    var frontDefault: String? {
        pokemon!.sprites.frontDefault
    }
    
    var backDefault: String? {
        pokemon!.sprites.backDefault
    }
    
    var frontFemale: String? {
        pokemon!.sprites.frontFemale
    }
    
    var backFemale: String? {
        pokemon!.sprites.backFemale
    }
    
    var frontShiny: String? {
        pokemon!.sprites.frontShiny
    }
    
    var backShiny: String? {
        pokemon!.sprites.backShiny
    }
    
    var frontShinyFemale: String? {
        pokemon!.sprites.frontShinyFemale
    }
    
    var backShinyFemale: String? {
        pokemon!.sprites.backShinyFemale
    }
    
    //MARK: - Held Items
    var hasHeldItems: Bool {
        pokemon!.heldItems != nil && !(pokemon!.heldItems ?? []).isEmpty
    }
    
    //MARK: - Forms
    var forms: [NamedAPIResource] {
        pokemon!.forms
    }
}
