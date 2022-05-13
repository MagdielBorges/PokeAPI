//
//  EncounterMethod.swift
//  PokeAPI Project
//
//  Created by Magdiel Borges on 5/4/22.
//

import Foundation

struct EncounterMethod: Codable {
    let id: Int
    let name: String
    let order: Int
    let names: [Name]
}
