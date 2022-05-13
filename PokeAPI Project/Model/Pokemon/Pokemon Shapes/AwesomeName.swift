//
//  AwesomeName.swift
//  PokeAPI Project
//
//  Created by Magdiel Borges on 5/3/22.
//

import Foundation

struct AwesomeName: Codable {
    let awesomeName: String
    let language: NamedAPIResource
    
    enum CodingKeys: String, CodingKey {
        case awesomeName = "awesome_name"
        case language
    }
}
