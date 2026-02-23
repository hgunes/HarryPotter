//
//  Potion.swift
//  HarryPotter
//
//  Created by Harun Gunes on 23/02/2026.
//

import Foundation

struct Potion: Codable {
    let data: [Data]
}

struct Data: Codable {
    let attributes: Attributes
}

struct Attributes: Codable {
    let slug: String?
    let characteristics: String?
    let ingredients: String?
    let sideEffects: String?
    let image: String?
}
