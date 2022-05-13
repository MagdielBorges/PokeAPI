//
//  String Clean Up Modifier.swift
//  PokeAPI Project
//
//  Created by Magdiel Borges on 5/6/22.
//

import Foundation

extension String {
    func fixMegaName() -> String {
        var string = self
        if string.contains(" Mega") {
            let range = string.range(of: " Mega")
            string.removeSubrange(range!)
            string = "Mega \(string)"
        }
        return string
    }

    func fixGmaxName() -> String {
        var string = self
        if string.contains(" Gmax") {
            let range = string.range(of: " Gmax")
            string.removeSubrange(range!)
            string = "Gigantamax \(string)"
        }
        return string
    }

    func cleanedUp() -> String {
        self
            .capitalized
            .replacingOccurrences(of: "-", with: " ")
            .fixGmaxName()
            .fixMegaName()
    }
}


