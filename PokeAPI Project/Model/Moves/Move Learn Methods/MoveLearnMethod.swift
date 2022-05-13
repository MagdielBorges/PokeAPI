//
//  MoveLearnMethod.swift
//  PokeAPI Project
//
//  Created by Magdiel Borges on 5/3/22.
//

import Foundation

struct MoveLearnMethod: Codable {
    let id: Int
    let name: String
    let descriptions: [Description]
    let names: [Name]
    let versionGroups: [NamedAPIResource]
    
    enum CodingKeys: String, CodingKey {
        case id
        case name
        case descriptions
        case names
        case versionGroups = "version_groups"
    }
}
