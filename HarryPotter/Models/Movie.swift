//
//  Movie.swift
//  HarryPotter
//
//  Created by Harun Gunes on 23/02/2026.
//

import Foundation

struct Movie: Codable {
    let title: String?
    let summary: String?
    let releaseDate: String?
    let directors: [String]?
    let poster: String?
}
