//
//  Characteristic.swift
//  PokeAPI Project
//
//  Created by Magdiel Borges on 5/3/22.
//

import Foundation

struct Characteristic: Codable {
    let id: Int
    let geneModulo: Int
    let possibleValues: [Int]
    
    enum CodingKeys: String, CodingKey {
        case id
        case geneModulo = "gene_modulo"
        case possibleValues = "possible_values"
    }
}
