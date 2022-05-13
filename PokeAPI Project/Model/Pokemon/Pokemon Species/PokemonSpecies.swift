//
//  PokemonSpecies.swift
//  PokeAPI Project
//
//  Created by Magdiel Borges on 5/3/22.
//

import Foundation

struct PokemonSpecies: Codable {
    let id: Int
    let name: String
    let order: Int
    let genderRate: Int
    let captureRate: Int
    let baseHappiness: Int
    let isBaby: Bool
    let isLegendary: Bool
    let isMythical: Bool
    let hatchCounter: Int
    let hasGenderDifferences: Bool
    let formsSwitchable: Bool
    let growthRate: NamedAPIResource
    let pokedexNumbers: [PokemonSpeciesDexEntry]
    let eggGroups: [NamedAPIResource]
    let color: NamedAPIResource
    let shape: NamedAPIResource
    let evolvesFromSpecies: NamedAPIResource?
    let evolutionChain: APIResource
    let habitat: NamedAPIResource?
    let generation: NamedAPIResource
    let names: [Name]
    let palParkEncounters: [PalParkEncounterArea]
    let flavorTextEntries: [FlavorText]
    let formDescriptions: [Description]?
    let genera: [Genus]
    let varieties: [PokemonSpeciesVariety]
    
    enum CodingKeys: String, CodingKey {
        case id
        case name
        case order
        case genderRate = "gender_rate"
        case captureRate = "capture_rate"
        case baseHappiness = "base_happiness"
        case isBaby = "is_baby"
        case isLegendary = "is_legendary"
        case isMythical = "is_mythical"
        case hatchCounter = "hatch_counter"
        case hasGenderDifferences = "has_gender_differences"
        case formsSwitchable = "forms_switchable"
        case growthRate = "growth_rate"
        case pokedexNumbers = "pokedex_numbers"
        case eggGroups = "egg_groups"
        case color
        case shape
        case evolvesFromSpecies = "evolves_from_species"
        case evolutionChain = "evolution_chain"
        case habitat
        case generation
        case names
        case palParkEncounters = "pal_park_encounters"
        case flavorTextEntries = "flavor_text_entries"
        case formDescriptions = "form_descriptions"
        case genera
        case varieties
    }
}
