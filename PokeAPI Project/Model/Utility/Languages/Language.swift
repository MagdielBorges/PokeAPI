//
//  Language.swift
//  PokeAPI Project
//
//  Created by Magdiel Borges on 5/3/22.
//

import Foundation

struct Language: Codable {
    let id: Int
    let name: String
    let official: Bool
    let iso639: String
    let iso3166: String
    let names: [Name]
}
