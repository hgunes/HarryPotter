//
//  HPService.swift
//  HarryPotter
//
//  Created by Harun Gunes on 24/02/2026.
//

import Foundation

final class HPService {
    
    static let shared = HPService()
    
    private init() {}
    
    func fetchData<T: Decodable>(request: HPRequest,
                                 completion: @escaping (Result<T, CustomError>) -> Void) {

        guard let url = URL(string: request.urlString) else { return }

        URLSession.shared.dataTask(with: url) { data, response, error in

            if let error = error {
                completion(.failure(.network(error)))
                return
            }

            guard let httpResponse = response as? HTTPURLResponse, 200..<300 ~= httpResponse.statusCode else {
                completion(.failure(.invalidResponse))
                return
            }

            guard let data = data else {
                completion(.failure(.noData))
                return
            }

            let decoder = JSONDecoder()
    //        decoder.keyDecodingStrategy = .convertFromSnakeCase

            do {
                let elements = try decoder.decode(T.self, from: data)

                DispatchQueue.main.async {
                    completion(.success(elements))
                }
            } catch {
                completion(.failure(.decoding(error)))
            }

        }.resume()
    }
}
