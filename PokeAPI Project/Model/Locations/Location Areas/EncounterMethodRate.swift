//
//  EncounterMethodRate.swift
//  PokeAPI Project
//
//  Created by Magdiel Borges on 5/4/22.
//

import Foundation

struct EncounterMethodRate: Codable {
    let encounterMethod: NamedAPIResource
    let versionDetails: [EncounterVersionDetails]
    
    enum CodingKeys: String, CodingKey {
        case encounterMethod = "encounter_method"
        case versionDetails = "version_details"
    }
}
