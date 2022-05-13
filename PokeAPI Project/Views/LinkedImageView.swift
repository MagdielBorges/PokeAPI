//
//  LinkedImageView.swift
//  PokeAPI Project
//
//  Created by Magdiel Borges on 5/4/22.
//

import SwiftUI

struct LinkedImageView: View {
    let url: String?
    var body: some View {
        AsyncImage(url: URL(string: url ?? "")) { image in
            image
        } placeholder: {
            Image("placeholder")
        }
    }
}

struct LinkedImageView_Previews: PreviewProvider {
    static var previews: some View {
        LinkedImageView(url: "https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/10034.png")
    }
}
