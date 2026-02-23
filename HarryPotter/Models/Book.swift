//
//  Book.swift
//  HarryPotter
//
//  Created by Harun Gunes on 23/02/2026.
//

import Foundation

struct Book: Codable {
    let title: String?
    let summary: String?
    let releaseDate: String?
    let pages: String?
    let cover: String?

    enum CodingKeys: String, CodingKey {
        case title = "title"
        case summary = "summary"
        case releaseDate = "release_date"
        case pages = "pages"
        case cover = "cover"
    }
}
