//
//  Version.swift
//  PokeAPI Project
//
//  Created by Magdiel Borges on 5/3/22.
//

import Foundation

struct Version: Codable {
    let id: Int
    let name: String
    let names: [Name]
    let versionGroup: NamedAPIResource
    
    enum CodingKeys: String, CodingKey {
        case id
        case name
        case names
        case versionGroup = "version_group"
    }
}
