//
//  MoveVM.swift
//  PokeAPI Project
//
//  Created by Magdiel Borges on 5/4/22.
//

import Foundation

class MoveVM: ObservableObject {
    @Published var dataLoaded = false
    @Published var move: Move?
    @Published var errorLoading = false
    func loadData(url: String) async {
        do {
            let (data, _) = try await URLSession.shared.data(from: URL(string: url)!)
            let decodedResponse = try? JSONDecoder().decode(Move.self, from: data)
            
            if let safeData = decodedResponse {
                DispatchQueue.main.async {
                    self.move = safeData
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
