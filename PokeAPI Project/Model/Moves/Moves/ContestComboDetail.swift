//
//  ContestComboDetail.swift
//  PokeAPI Project
//
//  Created by Magdiel Borges on 5/3/22.
//

import Foundation

struct ContestComboDetail: Codable {
    let useBefore: [NamedAPIResource]?
    let useAfter: [NamedAPIResource]?
    
    enum CodingKeys: String, CodingKey {
        case useBefore = "use_before"
        case useAfter = "use_after"
    }
}
