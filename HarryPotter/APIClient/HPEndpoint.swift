//
//  HPEndpoint.swift
//  HarryPotter
//
//  Created by Harun Gunes on 23/02/2026.
//

import Foundation

@frozen enum Endpoint: String {
    case characters = "/characters"
    case creatures = "/creatures"
    case spells = "/spells"
    case books = "/books"
    case movies = "/movies"
    case potions = "/potions"
}
