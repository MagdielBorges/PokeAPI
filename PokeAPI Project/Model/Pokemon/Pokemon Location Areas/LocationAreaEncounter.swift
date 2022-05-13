//
//  LocationAreaEncounter.swift
//  PokeAPI Project
//
//  Created by Magdiel Borges on 5/3/22.
//

import Foundation

struct LocationAreaEncounter: Codable {
    let locationArea: NamedAPIResource
    let versionDetails: [VersionEncounterDetail]
    
    enum CodingKeys: String, CodingKey {
        case locationArea = "location_area"
        case versionDetails = "version_details"
    }
}
