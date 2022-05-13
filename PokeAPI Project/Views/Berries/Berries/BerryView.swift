//
//  BerryView.swift
//  PokeAPI Project
//
//  Created by Magdiel Borges on 5/5/22.
//

import SwiftUI

struct BerryView: View {
    let url: String
    @StateObject var viewModel = BerryVM()
    var body: some View {
        Group {
            switch viewModel.errorLoading {
            case true:
                FailedToLoadView(url: url)
            case false:
                switch viewModel.dataLoaded {
                case true:
                    Form {
                        Section("Basic Information") {
                            Text("Growth Time: \(viewModel.berry!.growthTime)")
                            Text("Max Harvest: \(viewModel.berry!.maxHarvest)")
                            Text("Natural Gift Power: \(viewModel.berry!.naturalGiftPower)")
                            Text("Size: \(viewModel.berry!.size)")
                            Text("Smoothness: \(viewModel.berry!.smoothness)")
                            Text("Soil Dryness:\(viewModel.berry!.soilDryness)")
                        }
                        Section("Item Information") {
                            ResourceNavigationLink(endPoint: .item, result: viewModel.berry!.item)
                        }
                    }
                    .navigationTitle(viewModel.berry!.name.cleanedUp())
                case false:
                    ProgressView()
                }
            }
        }
        .task {
            await viewModel.loadData(url: url)
        }
    }
}

struct BerryView_Previews: PreviewProvider {
    static var previews: some View {
        NavigationView {
            BerryView(url: "https://pokeapi.co/api/v2/berry/1")
        }
    }
}
