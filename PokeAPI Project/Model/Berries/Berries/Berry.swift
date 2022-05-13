//
//  Berry.swift
//  PokeAPI Project
//
//  Created by Magdiel Borges on 5/3/22.
//

import Foundation

struct Berry: Codable {
    let id: Int
    let name: String
    let growthTime: Int
    let maxHarvest: Int
    let naturalGiftPower: Int
    let size: Int
    let smoothness: Int
    let soilDryness: Int
    let firmness: NamedAPIResource
    let flavors: [BerryFlavorMap]
    let item: NamedAPIResource
    let naturalGiftType: NamedAPIResource
    
    enum CodingKeys: String, CodingKey {
        case id
        case name
        case growthTime = "growth_time"
        case maxHarvest = "max_harvest"
        case naturalGiftPower = "natural_gift_power"
        case size
        case smoothness
        case soilDryness = "soil_dryness"
        case firmness
        case flavors
        case item
        case naturalGiftType = "natural_gift_type"
    }
}
