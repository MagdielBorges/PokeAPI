//
//  Location.swift
//  PokeAPI Project
//
//  Created by Magdiel Borges on 5/4/22.
//

import Foundation

struct Location: Codable {
    let id: Int
    let name: String
    let region: NamedAPIResource
    let names: [Name]
    let gameIndices: [GenerationGameIndex]
    let areas: [NamedAPIResource]
    
    enum CodingKeys: String, CodingKey {
        case id
        case name
        case region
        case names
        case gameIndices = "game_indices"
        case areas
    }
}
