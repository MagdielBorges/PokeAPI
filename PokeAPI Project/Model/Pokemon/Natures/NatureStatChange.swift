//
//  NatureStatChange.swift
//  PokeAPI Project
//
//  Created by Magdiel Borges on 5/3/22.
//

import Foundation

struct NatureStatChange: Codable {
    let maxChange: Int
    let pokeathlonStat: NamedAPIResource
    
    enum CodingKeys: String, CodingKey {
        case maxChange = "max_change"
        case pokeathlonStat = "pokeathlon_stat"
    }
}
