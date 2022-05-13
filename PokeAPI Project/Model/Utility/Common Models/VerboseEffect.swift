//
//  VerboseEffect.swift
//  PokeAPI Project
//
//  Created by Magdiel Borges on 5/3/22.
//

import Foundation

struct VerboseEffect: Codable, Hashable {
    let effect: String
    let shortEffect: String
    let language: NamedAPIResource
    
    enum CodingKeys: String, CodingKey {
        case effect
        case shortEffect = "short_effect"
        case language
    }
}
