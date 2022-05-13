//
//  Machine.swift
//  PokeAPI Project
//
//  Created by Magdiel Borges on 5/4/22.
//

import Foundation

struct Machine: Codable {
    let id: Int
    let item: NamedAPIResource
    let move: NamedAPIResource
    let versionGroup: NamedAPIResource
    
    enum CodingKeys: String, CodingKey {
        case id
        case item
        case move
        case versionGroup = "version_group"
    }
}
