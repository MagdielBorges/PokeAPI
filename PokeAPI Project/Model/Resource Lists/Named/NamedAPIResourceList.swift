//
//  NamedAPIResourceList.swift
//  PokeAPI Project
//
//  Created by Magdiel Borges on 5/4/22.
//

import Foundation

struct NamedAPIResourceList: Codable {
    let count: Int
    let next: String?
    let previous: String?
    let results: [NamedAPIResource]
}
