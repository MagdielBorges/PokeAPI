//
//  PokemonSpeciesListVM.swift
//  PokeAPI Project
//
//  Created by Magdiel Borges on 5/4/22.
//

import Foundation

class NamedAPIResourceListVM: ObservableObject {
    @Published var namedAPIResourceList: NamedAPIResourceList?
    @Published var searchList: NamedAPIResourceList?
    @Published var dataLoaded = false
    @Published var errorLoading = false
    @Published var limit: Int = 20
    var offset: Int = 20
    enum ListMode {
        case limited, all
    }
    @Published var listMode: ListMode = .all
    
    var results: [NamedAPIResource] {
        return namedAPIResourceList!.results
    }
    
    var searchResults: [NamedAPIResource] {
        return searchList!.results
    }
    
    var next: String? {
        namedAPIResourceList!.next
    }
    
    var previous: String? {
        namedAPIResourceList!.previous
    }
    
    var count: Int {
        namedAPIResourceList!.count
    }
    
    func loadData(endPoint: String) async {
        let url = "https://pokeapi.co/api/v2/\(endPoint)"
        do {
            let (data, _) = try await URLSession.shared.data(from: URL(string: url)!)
            let decodedResponse = try? JSONDecoder().decode(NamedAPIResourceList.self, from: data)
            if let safeData = decodedResponse {
                DispatchQueue.main.async {
                    self.namedAPIResourceList = safeData
                    print("Data Decoded Successfully")
                    Task {
                        await self.loadFullList(endPoint: endPoint)
                    }
                }
            } else {
                DispatchQueue.main.async {
                    self.errorLoading = true
                }
            }
        } catch {
            errorLoading = true
            print(error)
        }
    }
    func loadData(url: String) async {
        dataLoaded = false
        do {
            let (data, _) = try await URLSession.shared.data(from: URL(string: url)!)
            let decodedResponse = try? JSONDecoder().decode(NamedAPIResourceList.self, from: data)
            if let safeData = decodedResponse {
                DispatchQueue.main.async {
                    self.namedAPIResourceList = safeData
                    print("Next/Previous Page Decoded Successfully")
                    self.dataLoaded = true
//                    Task {
//                        await self.loadFullList(url: url)
//                    }
                }
            } else {
                DispatchQueue.main.async {
                    self.errorLoading = true
                }
            }
        } catch {
            print(error)
        }
    }
    func loadFullList(endPoint: String) async {
        let url = "https://pokeapi.co/api/v2/\(endPoint)"
        let fullURL = "\(url)/?limit=\(count)"
        do {
            let (data, _) = try await URLSession.shared.data(from: URL(string: fullURL)!)
            let decodedResponse = try? JSONDecoder().decode(NamedAPIResourceList.self, from: data)
            if let safeData = decodedResponse {
                DispatchQueue.main.async {
                    self.searchList = safeData
                    print("Data Decoded Successfully")
                    self.dataLoaded = true
                }
            } else {
                DispatchQueue.main.async {
                    self.errorLoading = true
                }
                print("Search List Failed to Decode")
            }
        } catch {
            print(error)
        }
    }
    func loadFullList(url: String) async {
        let fullURL = "\(url)?limit=\(count)"
        do {
            let (data, _) = try await URLSession.shared.data(from: URL(string: fullURL)!)
            let decodedResponse = try? JSONDecoder().decode(NamedAPIResourceList.self, from: data)
            if let safeData = decodedResponse {
                DispatchQueue.main.async {
                    self.searchList = safeData
                    print("Data Decoded Successfully")
                    self.dataLoaded = true
                }
            } else {
                DispatchQueue.main.async {
                    self.errorLoading = true
                }
                print("Search List Failed to Decode")
            }
        } catch {
            print(error)
        }
    }
}
