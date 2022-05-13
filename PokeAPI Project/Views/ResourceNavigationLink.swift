//
//  ResourceNavigationLink.swift
//  PokeAPI Project
//
//  Created by Magdiel Borges on 5/4/22.
//

import SwiftUI

struct ResourceNavigationLink: View {
    let endPoint: EndPoint
    let result: NamedAPIResource
    var body: some View {
        NavigationLink {
            switch endPoint {
            case .berry:
                BerryView(url: result.url)
            case .berryFirmness:
                Text(result.name.capitalized)
            case .berryFlavor:
                Text(result.name.capitalized)
            case .contestType:
                Text(result.name.capitalized)
            case .contestEffect:
                Text(result.name.capitalized)
            case .superContestEffect:
                Text(result.name.capitalized)
            case .encounterMethod:
                Text(result.name.capitalized)
            case .encounterCondition:
                Text(result.name.capitalized)
            case .encounterConditionValue:
                Text(result.name.capitalized)
            case .evolutionChain:
                Text(result.name.capitalized)
            case .evolutionTrigger:
                Text(result.name.capitalized)
            case .generation:
                Text(result.name.capitalized)
            case .pokedex:
                PokedexView(url: result.url)
            case .version:
                Text(result.name.capitalized)
            case .versionGroup:
                Text(result.name.capitalized)
            case .item:
                ItemView(url: result.url)
            case .itemAttribute:
                Text(result.name.capitalized)
            case .itemCategory:
                Text(result.name.capitalized)
            case .itemFlingEffect:
                Text(result.name.capitalized)
            case .itemPocket:
                Text(result.name.capitalized)
            case .location:
                Text(result.name.capitalized)
            case .locationArea:
                Text(result.name.capitalized)
            case .palParkArea:
                Text(result.name.capitalized)
            case .region:
                Text(result.name.capitalized)
            case .machine:
                Text(result.name.capitalized)
            case .move:
                MoveView(url: result.url)
            case .moveAilment:
                Text(result.name.capitalized)
            case .moveBattleStyle:
                Text(result.name.capitalized)
            case .moveCategory:
                Text(result.name.capitalized)
            case .moveDamageClass:
                Text(result.name.capitalized)
            case .moveLearnMethods:
                Text(result.name.capitalized)
            case .moveTarget:
                Text(result.name.capitalized)
            case .ability:
                AbilityView(url: result.url)
            case .characteristic:
                Text(result.name.capitalized)
            case .eggGroup:
                Text(result.name.capitalized)
            case .gender:
                Text(result.name.capitalized)
            case .growthRate:
                Text(result.name.capitalized)
            case .nature:
                Text(result.name.capitalized)
            case .pokeathlonStat:
                Text(result.name.capitalized)
            case .pokemon:
                PokemonView(url: result.url)
            case .pokemonLocationArea:
                Text(result.name.capitalized)
            case .pokemonColor:
                Text(result.name.capitalized)
            case .pokemonForm:
                PokemonFormView(url: result.url)
            case .pokemonHabitat:
                Text(result.name.capitalized)
            case .pokemonShape:
                Text(result.name.capitalized)
            case .pokemonSpecies:
                PokemonSpeciesView(url: result.url)
                //PrototypeView(id: result.name)
            case .stat:
                Text(result.name.capitalized)
            case .type:
                TypeView(url: result.url)
            }
        } label: {
            Text(result.name.cleanedUp())
        }
    }
}


