//
//  StoreModel.swift
//  FakeStoreApiMvApproach
//
//  Created by Buhle Radzilani on 2024/06/06.
//

import Foundation

@MainActor
class StoreModel: ObservableObject {
    
    let webService: Webservice
    
    @Published var products: [Product] = []
    
    init(webService: Webservice){
        self.webService = webService
    }
    
    func populateProducts() async throws {
        
      products = try await  webService.getProducts()
        
    }
    
    
    
}
