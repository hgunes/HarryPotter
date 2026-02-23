//
//  Character.swift
//  HarryPotter
//
//  Created by Harun Gunes on 23/02/2026.
//

import Foundation

struct Character: Codable {
    let name: String?
    let alternatenames: [String]?
    let species: String?
    let house: String?
    let dateOfBirth: String?
    let ancestry: String?
    let actor: String?
    let image: String?
    let wand: Wand?
    let patronus: String?
    
    enum CodingKeys: String, CodingKey {
        case name
        case alternatenames = "alternate_names"
        case species
        case house
        case dateOfBirth
        case ancestry
        case actor
        case image
        case wand
        case patronus
    }
}

struct Wand: Codable {
    let wood: String?
    let core: String?
    let length: Double?
}
