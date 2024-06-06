//
//  Webservice.swift
//  FakeStoreApiMvApproach
//
//  Created by Buhle Radzilani on 2024/06/06.
//

import Foundation

enum NetworkError: Error{
    case badURL
    case badRequest
}

class Webservice {
    
    func getProducts() async throws -> [Product] {
        
        //getting the url
        guard let url = URL(string: "https://fakestoreapi.com/products") else{
            throw NetworkError.badURL
        }
        
        //After getting URl it's time to make the http call.
        let (data, response)  = try await URLSession.shared.data(from: url)
        
        guard let httpResponse = response as? HTTPURLResponse,
              httpResponse.statusCode == 200 else{
            throw NetworkError.badRequest
        }
        
        let products = try JSONDecoder().decode([Product].self, from: data)
        
        return products
        
    }
    
}
