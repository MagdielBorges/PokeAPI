//
//  PokedexVM.swift
//  PokeAPI Project
//
//  Created by Magdiel Borges on 5/4/22.
//

import Foundation

class PokedexVM: ObservableObject {
    @Published var dataLoaded = false
    @Published var errorLoading = false
    @Published var pokedex: Pokedex?
    
    func loadData(url: String) async {
        do {
            let (data, _) = try await URLSession.shared.data(from: URL(string: url)!)
            let decodedResponse = try? JSONDecoder().decode(Pokedex.self, from: data)
            
            if let safeData = decodedResponse {
                DispatchQueue.main.async {
                    self.pokedex = safeData
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
