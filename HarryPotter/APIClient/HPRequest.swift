//
//  HPRequest.swift
//  HarryPotter
//
//  Created by Harun Gunes on 24/02/2026.
//

import Foundation

final class HPRequest {

    enum BaseURL: String {
        case creaturesBaseURL = "https://harry-potter-open-api-ff4c7a51ed23.herokuapp.com/api/v1"
        case mainBaseURL = "https://potterhead-api.vercel.app/api"
        case potionBaseURL = "https://api.potterdb.com/v1"
    }

    private let baseURL: BaseURL

    private let endpoint: Endpoint

    private let pathComponents: [String]

    private let queryParameters: [URLQueryItem]

    var urlString: String {
        var string = baseURL.rawValue
        string += "/"
        string += endpoint.rawValue

        if !pathComponents.isEmpty {
            pathComponents.forEach {
                string += "/\($0)"
            }
        }

        return string
    }

    init(baseURL: BaseURL, endpoint: Endpoint, pathComponents: [String] = [], queryParameters: [URLQueryItem] = []) {
        self.baseURL = baseURL
        self.endpoint = endpoint
        self.pathComponents = pathComponents
        self.queryParameters = queryParameters
    }
}
