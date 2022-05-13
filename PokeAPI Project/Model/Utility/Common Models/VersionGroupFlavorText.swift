//
//  VersionGroupFlavorText.swift
//  PokeAPI Project
//
//  Created by Magdiel Borges on 5/3/22.
//

import Foundation

struct VersionGroupFlavorText: Codable {
    let text: String
    let language: NamedAPIResource
    let versionGroup: NamedAPIResource
    
    enum CodingKeys: String, CodingKey {
        case text
        case language
        case versionGroup = "version_group"
    }
}
