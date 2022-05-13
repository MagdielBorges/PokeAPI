//
//  MoveView.swift
//  PokeAPI Project
//
//  Created by Magdiel Borges on 5/4/22.
//

import SwiftUI

struct MoveView: View {
    let url: String
    @StateObject var viewModel = MoveVM()
    var body: some View {
        Group {
            switch viewModel.errorLoading {
            case true:
                FailedToLoadView(url: url)
            case false:
                switch viewModel.dataLoaded {
                case true:
                    Form {
                        Section("Move Info") {
                            Text("Accuracy: \(viewModel.move!.accuracy)")
                            if viewModel.move!.power != nil {
                                Text("Power: \(viewModel.move!.power!)")
                            }
                            Text("PP: \(viewModel.move!.pp)")
                            Text("Priority: \(viewModel.move!.priority)")
                        }
                        Section("Type") {
                            ResourceNavigationLink(endPoint: .type, result: viewModel.move!.type)
                        }
                        Section("Learned By") {
                            ForEach(viewModel.move!.learnedByPokemon, id: \.self) { pokemon in
                                ResourceNavigationLink(endPoint: .pokemon, result: pokemon)
                            }
                        }
                    }
                    .navigationTitle(viewModel.move!.name.cleanedUp())
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

struct MoveView_Previews: PreviewProvider {
    static var previews: some View {
        MoveView(url: "https://pokeapi.co/api/v2/move/133")
    }
}
