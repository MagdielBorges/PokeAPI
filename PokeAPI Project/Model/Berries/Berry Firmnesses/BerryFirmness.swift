//
//  BerryFirmness.swift
//  PokeAPI Project
//
//  Created by Magdiel Borges on 5/3/22.
//

import Foundation

struct BerryFirmness: Codable {
    let id: Int
    let name: String
    let berries: [NamedAPIResource]
    let names: [Name]
}
