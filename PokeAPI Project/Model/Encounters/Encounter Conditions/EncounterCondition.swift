//
//  EncounterCondition.swift
//  PokeAPI Project
//
//  Created by Magdiel Borges on 5/4/22.
//

import Foundation

struct EncounterCondition: Codable {
    let id: Int
    let name: String
    let names: [Name]
    let values: [NamedAPIResource]
}
