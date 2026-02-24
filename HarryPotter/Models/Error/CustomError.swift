//
//  CustomError.swift
//  HarryPotter
//
//  Created by Harun Gunes on 24/02/2026.
//

import Foundation

enum CustomError: Error {
    case network(Error)
    case invalidResponse
    case noData
    case decoding(Error)
}
