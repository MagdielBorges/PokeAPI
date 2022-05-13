//
//  EvolutionChain.swift
//  PokeAPI Project
//
//  Created by Magdiel Borges on 5/3/22.
//

import Foundation

struct EvolutionChain: Codable {
    let id: Int
    let babyTriggerItem: NamedAPIResource?
    let chain: ChainLink
    
    enum CodingKeys: String, CodingKey {
        case id
        case babyTriggerItem = "baby_trigger_item"
        case chain
    }
}
