//
//  PalParkEncounterArea.swift
//  PokeAPI Project
//
//  Created by Magdiel Borges on 5/3/22.
//

import Foundation

struct PalParkEncounterArea: Codable {
    let baseScore: Int
    let rate: Int
    let area: NamedAPIResource
    
    enum CodingKeys: String, CodingKey {
        case baseScore = "base_score"
        case rate
        case area
    }
}
