//
//  PrototypeVM.swift
//  PokeAPI Project
//
//  Created by Magdiel Borges on 5/5/22.
//

import Foundation

class PrototypeVM: ObservableObject {
    @Published var loaded = false
    @Published var errorLoading = false
    @Published var pokemon: Pokemon?
    @Published var pokemonSpecies: PokemonSpecies?
    @Published var pokemonForm: PokemonForm?
    let url = "https://pokeapi.co/api/v2"
    
    func loadData(for id: String) async {
        let pokemonLoaded = await loadPokemon(id: id)
        let speciesLoaded = await loadSpecies(id: id)
        let loadForms = await loadForms(id: id)
        if pokemonLoaded && speciesLoaded && loadForms {
            DispatchQueue.main.async {
                self.loaded = true
            }
        } else {
            DispatchQueue.main.async {
                self.errorLoading = true
            }
        }
    }
    
    func loadPokemon(id: String) async -> Bool {
        let url = "\(self.url)/pokemon/\(id)"
        do {
            let (data, _) = try await URLSession.shared.data(from: URL(string: url)!)
            let decodedResponse = try? JSONDecoder().decode(Pokemon.self, from: data)
            
            if let safeData = decodedResponse {
                DispatchQueue.main.async {
                    self.pokemon = safeData
                    print("\(self.pokemon!.name) Data Loaded Successfully!")
                }
                return true
            } else {
                print("Pokemon Data Not Decoded for \(id)")
                return false
            }
        } catch {
            print(error)
            return false
        }
    }
    
    func loadSpecies(id: String) async -> Bool {
        let url = "\(self.url)/pokemon-species/\(id)"
        do {
            let (data, _) = try await URLSession.shared.data(from: URL(string: url)!)
            let decodedResponse = try? JSONDecoder().decode(PokemonSpecies.self, from: data)
            
            if let safeData = decodedResponse {
                DispatchQueue.main.async {
                    self.pokemonSpecies = safeData
                    print("\(self.pokemonSpecies!.name) Species Data Loaded Successfully.")
                }
                return true
            } else {
                print("Species Data Not Decoded for \(id)")
                return false
            }
        } catch {
            print(error)
            return false
        }
    }
    
    func loadForms(id: String) async -> Bool{
        let url = "\(self.url)/pokemon-form/\(id)"
        do {
            let (data, _) = try await URLSession.shared.data(from: URL(string: url)!)
            let decodedResponse = try? JSONDecoder().decode(PokemonForm.self, from: data)
            
            if let safeData = decodedResponse {
                DispatchQueue.main.async {
                    self.pokemonForm = safeData
                    print("\(self.pokemonForm!.pokemon.name) Form Data Loaded Successfully.")
                }
                return true
            } else {
                print("Form Data Not Decoded for \(id)")
                return false
            }
        } catch {
            print(error)
            return false
        }
    }
}

extension PrototypeVM {
    var genderRate: String {
        if pokemonSpecies!.genderRate > 0 {
            let genderRate: Double = Double(pokemonSpecies!.genderRate) / Double(8) * Double(100)
            return "\(String(format: "%.1f", genderRate))%"
        } else {
            return "Genderless"
        }
    }
}
