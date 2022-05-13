//
//  NatureStatAffectSets.swift
//  PokeAPI Project
//
//  Created by Magdiel Borges on 5/3/22.
//

import Foundation

struct NatureStatAffectSets: Codable {
    let increase: [NamedAPIResource]
    let decrease: [NamedAPIResource]
}
