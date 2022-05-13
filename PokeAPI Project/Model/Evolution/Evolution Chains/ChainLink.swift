//
//  ChainLink.swift
//  PokeAPI Project
//
//  Created by Magdiel Borges on 5/3/22.
//

import Foundation

struct ChainLink: Codable, Hashable {
    let isBaby: Bool
    let species: NamedAPIResource
    let evolutionDetails: [EvolutionDetail]?
    let evolvesTo: [ChainLink]?
    
    enum CodingKeys: String, CodingKey {
        case isBaby = "is_baby"
        case species
        case evolutionDetails = "evolution_details"
        case evolvesTo = "evolves_to"
    }
}
