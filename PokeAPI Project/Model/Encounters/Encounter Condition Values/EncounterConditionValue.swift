//
//  EncounterConditionValue.swift
//  PokeAPI Project
//
//  Created by Magdiel Borges on 5/4/22.
//

import Foundation

struct EncounterConditionValue: Codable {
    let id: Int
    let name: String
    let condition: NamedAPIResource
    let names: [Name]
}
