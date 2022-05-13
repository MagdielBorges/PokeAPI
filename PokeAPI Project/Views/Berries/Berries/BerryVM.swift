//
//  BerryVM.swift
//  PokeAPI Project
//
//  Created by Magdiel Borges on 5/5/22.
//

import Foundation

class BerryVM: ObservableObject {
    @Published var dataLoaded = false
    @Published var berry: Berry?
    @Published var errorLoading = false
    func loadData(url: String) async {
        do {
            let (data, _) = try await URLSession.shared.data(from: URL(string: url)!)
            let decodedResponse = try? JSONDecoder().decode(Berry.self, from: data)
            
            if let safeData = decodedResponse {
                DispatchQueue.main.async {
                    self.berry = safeData
                    self.dataLoaded = true
                    print("Data Decoded Successfully")
                }
            } else {
                DispatchQueue.main.async {
                    self.errorLoading = true
                    print("Data Not Decoded")
                    print(url)
                }
            }
        } catch {
            errorLoading = true
            print(error)
        }
    }
}
