//
//  SwiftUIView.swift
//  PokeAPI Project
//
//  Created by Magdiel Borges on 5/4/22.
//

import SwiftUI

struct SwiftUIView: View {
    var body: some View {
        List {
            Section("Berries") {
                EndPointNavigationLink(title: "Berries", endPoint: .berry)
                EndPointNavigationLink(title: "Berry Firmnesses", endPoint: .berryFirmness)
                EndPointNavigationLink(title: "Berry Flavors", endPoint: .berryFlavor)
            }
            Section("Contest") {
                EndPointNavigationLink(title: "Contest Types", endPoint: .contestType)
                EndPointNavigationLink(title: "Contest Effects", endPoint: .contestEffect)
                EndPointNavigationLink(title: "Super Contest Effects", endPoint: .superContestEffect)
            }
            Section("Encounters") {
                EndPointNavigationLink(title: "Encounter Methods", endPoint: .encounterMethod)
                EndPointNavigationLink(title: "Encounter Condition", endPoint: .encounterCondition)
                EndPointNavigationLink(title: "Encounter Condition Values", endPoint: .encounterConditionValue)
            }
            Section("Evolution") {
                EndPointNavigationLink(title: "Evolution Chain", endPoint: .evolutionChain)
                EndPointNavigationLink(title: "Evolution Trigger", endPoint: .evolutionTrigger)
            }
            Section("Games") {
                EndPointNavigationLink(title: "Generations", endPoint: .generation)
                EndPointNavigationLink(title: "Pokedexes", endPoint: .pokedex)
                EndPointNavigationLink(title: "Version", endPoint: .version)
                EndPointNavigationLink(title: "Version Groups", endPoint: .versionGroup)
            }
            Section("Items") {
                EndPointNavigationLink(title: "Item", endPoint: .item)
                EndPointNavigationLink(title: "Item Attributes", endPoint: .itemAttribute)
                EndPointNavigationLink(title: "Item Categories", endPoint: .itemCategory)
                EndPointNavigationLink(title: "Item Fling Effects", endPoint: .itemFlingEffect)
                EndPointNavigationLink(title: "Item Pockets", endPoint: .itemPocket)
            }
            Section("Locations") {
                EndPointNavigationLink(title: "Locations", endPoint: .location)
                EndPointNavigationLink(title: "Location Areas", endPoint: .locationArea)
                EndPointNavigationLink(title: "Pal Park Areas", endPoint: .palParkArea)
                EndPointNavigationLink(title: "Regions", endPoint: .region)
            }
            Section("Machines") {
                EndPointNavigationLink(title: "Machines", endPoint: .machine)
            }
            Section("Moves") {
                EndPointNavigationLink(title: "Moves", endPoint: .move)
                EndPointNavigationLink(title: "Move Ailments", endPoint: .moveAilment)
                EndPointNavigationLink(title: "Move Battle Styles", endPoint: .moveBattleStyle)
                EndPointNavigationLink(title: "Move Categories", endPoint: .moveCategory)
                EndPointNavigationLink(title: "Move Damage Classes", endPoint: .moveDamageClass)
                EndPointNavigationLink(title: "Move Learn Methods", endPoint: .moveLearnMethods)
                EndPointNavigationLink(title: "Move Targets", endPoint: .moveTarget)
            }
            Section("Pokemon") {
                Group {
                    EndPointNavigationLink(title: "Abilities", endPoint: .ability)
                    EndPointNavigationLink(title: "Characteristics", endPoint: .characteristic)
                    EndPointNavigationLink(title: "Egg Groups", endPoint: .eggGroup)
                    EndPointNavigationLink(title: "Genders", endPoint: .gender)
                    EndPointNavigationLink(title: "Growth Rates", endPoint: .growthRate)
                    EndPointNavigationLink(title: "Natures", endPoint: .nature)
                    EndPointNavigationLink(title: "Pokeathlon Stats", endPoint: .pokeathlonStat)
                    EndPointNavigationLink(title: "Pokemon", endPoint: .pokemon)
                    EndPointNavigationLink(title: "Pokemon Location Areas", endPoint: .pokemonLocationArea)
                    EndPointNavigationLink(title: "Pokemon Colors", endPoint: .pokemonColor)
                }
                EndPointNavigationLink(title: "Pokemon Forms", endPoint: .pokemonForm)
                EndPointNavigationLink(title: "Pokemon Habitats", endPoint: .pokemonHabitat)
                EndPointNavigationLink(title: "Pokemon Shapes", endPoint: .pokemonShape)
                EndPointNavigationLink(title: "Pokemon Species", endPoint: .pokemonSpecies)
                EndPointNavigationLink(title: "Stats", endPoint: .stat)
                EndPointNavigationLink(title: "Type", endPoint: .type)
            }
        }
        .navigationTitle("PokeAPI Project")
    }
}

struct SwiftUIView_Previews: PreviewProvider {
    static var previews: some View {
        SwiftUIView()
    }
}

struct EndPointNavigationLink: View {
    let title: String
    let endPoint: EndPoint
    var body: some View {
        NavigationLink {
            NamedAPIResourceListView(title: title, endPoint: endPoint)
        } label: {
            Text(title)
        }
    }
}
