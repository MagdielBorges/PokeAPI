//
//  NaturePokeathlonStatAffectSets.swift
//  PokeAPI Project
//
//  Created by Magdiel Borges on 5/3/22.
//

import Foundation

struct NaturePokeathlonStatAffectSets: Codable {
    let increase: [NaturePokeathlonStatAffect]
    let decrease: [NaturePokeathlonStatAffect]
}
