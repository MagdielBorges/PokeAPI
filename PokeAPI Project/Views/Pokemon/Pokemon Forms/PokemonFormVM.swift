//
//  PokemonFormVM.swift
//  PokeAPI Project
//
//  Created by Magdiel Borges on 5/4/22.
//

import Foundation

class PokemonFormVM: ObservableObject {
    @Published var dataLoaded = false
    @Published var errorLoading = false
    @Published var pokemonForm: PokemonForm?
    
    func loadData(url: String) async {
        do {
            let (data, _) = try await URLSession.shared.data(from: URL(string: url)!)
            let decodedResponse = try? JSONDecoder().decode(PokemonForm.self, from: data)
            
            if let safeData = decodedResponse {
                DispatchQueue.main.async {
                    self.pokemonForm = safeData
                    self.dataLoaded = true
                    print("Data Decoded Successfully")
                }
            } else {
                DispatchQueue.main.async {
                    self.errorLoading = true
                    print("Data Not Decoded")
                }
            }
        } catch {
            errorLoading = true
            print(error)
        }
    }
}
