//
//  FailedToLoadView.swift
//  PokeAPI Project
//
//  Created by Magdiel Borges on 5/4/22.
//

import SwiftUI

struct FailedToLoadView: View {
    init(url: String) {
        self.url = url
    }
    init(endPoint: EndPoint) {
        let endPoint: String = endPoint.rawValue
        self.url = "https://pokeapi.co/api/v2/\(endPoint)"
    }
    let url: String
    var body: some View {
        VStack {
            Image("placeholder")
            Text("An error occured. You probably made a mistake in the dataModel. Have fun finding it. The error is for: \(url)")
                .italic()
                .foregroundColor(.secondary)
            Link("Link to the JSON", destination: URL(string: url)!)
                
        }
    }
}

struct FailedToLoadView_Previews: PreviewProvider {
    static var previews: some View {
        FailedToLoadView(url: "https://google.com")
    }
}
