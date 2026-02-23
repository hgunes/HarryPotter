//
//  Creature.swift
//  HarryPotter
//
//  Created by Harun Gunes on 23/02/2026.
//

import Foundation

struct Creature: Codable {
    let data: [CreatureData]
}

struct CreatureData: Codable {
    let type: String?
    let attributes: CreatureAttribute
}

struct CreatureAttribute: Codable {
    let name: String?
    let relatedTo: String?
    let img: String?
    
    enum CodingKeys: String, CodingKey {
        case name
        case relatedTo = "related_to"
        case img
    }
}
