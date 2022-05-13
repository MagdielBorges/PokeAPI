//
//  NaturePokeathlonStatAffect.swift
//  PokeAPI Project
//
//  Created by Magdiel Borges on 5/3/22.
//

import Foundation

struct NaturePokeathlonStatAffect: Codable {
    let maxChange: Int
    let nature: NamedAPIResource
    
    enum CodingKeys: String, CodingKey {
        case maxChange = "max_change"
        case nature
    }
}
