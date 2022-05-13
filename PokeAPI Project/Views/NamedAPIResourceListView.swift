//
//  PokemonSpeciesListView.swift
//  PokeAPI Project
//
//  Created by Magdiel Borges on 5/4/22.
//

import SwiftUI

struct NamedAPIResourceListView: View {
    @StateObject var viewModel = NamedAPIResourceListVM()
    @State private var searchText = ""
    let title: String
    let endPoint: EndPoint
    var body: some View {
        Group {
            switch viewModel.errorLoading {
            case true:
                FailedToLoadView(endPoint: endPoint)
            case false:
                switch viewModel.dataLoaded {
                case true:
                    List {
                        ForEach(searchText.isEmpty ? viewModel.results : viewModel.searchResults.filter { $0.name.capitalized.contains(searchText)}, id: \.self) { result in
                            ResourceNavigationLink(endPoint: endPoint, result: result)
                        }
                    }
                    .navigationTitle(title)
                    .navigationBarTitleDisplayMode(.inline)
//                    .toolbar {
//                        ToolbarItem(placement: .navigationBarTrailing) {
//                            if viewModel.next != nil {
//                                Button("Next") {
//                                    Task {
//                                        await viewModel.loadData(url: viewModel.next!)
//                                    }
//                                }
//                            }
//                        }
//                        ToolbarItem(placement: .navigationBarLeading) {
//                            if viewModel.previous != nil {
//                                Button("Previous") {
//                                    Task {
//                                        await viewModel.loadData(url: viewModel.previous!)
//                                    }
//                                }
//                            }
//                        }
//                    }
                    .safeAreaInset(edge: .bottom, content: {
                        HStack {
                            if viewModel.previous != nil {
                                Button("Previous") {
                                    Task {
                                        await viewModel.loadData(url: viewModel.previous!)
                                    }
                                }
                            }
                            Spacer()
                            if viewModel.next != nil {
                                Button("Next") {
                                    Task {
                                        await viewModel.loadData(url: viewModel.next!)
                                    }
                                }
                            }
                        }
                        .padding()
                        .background(.thinMaterial)
                    })
                    .searchable(text: $searchText, placement: .navigationBarDrawer(displayMode: .always)) {
                        ForEach(viewModel.searchResults.filter { $0.name.contains(searchText.lowercased())}, id: \.self) { result in
                            Text(result.name.capitalized).searchCompletion(result.name.capitalized)
                        }
                    }
                case false:
                    ProgressView()
                }
            }
        }
        .task {
            await viewModel.loadData(endPoint: endPoint.rawValue)
        }
    }
}

struct PokemonSpeciesListView_Previews: PreviewProvider {
    static var previews: some View {
        NavigationView{
            NamedAPIResourceListView(title: "Pokemon Species", endPoint: .pokemonSpecies)
        }
    }
}

