//
//  VersionEncounterDetail.swift
//  PokeAPI Project
//
//  Created by Magdiel Borges on 5/3/22.
//

import Foundation

struct VersionEncounterDetail: Codable {
    let version: NamedAPIResource
    let maxChance: Int
    let encounterDetails: [Encounter]
    
    enum CodingKeys: String, CodingKey {
        case version
        case maxChance = "max_chance"
        case encounterDetails = "encounter_details"
    }
}
