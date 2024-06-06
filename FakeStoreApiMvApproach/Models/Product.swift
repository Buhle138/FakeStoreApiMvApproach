//
//  Product.swift
//  FakeStoreApiMvApproach
//
//  Created by Buhle Radzilani on 2024/06/06.
//

import Foundation

struct Product : Decodable, Identifiable{
    let id: Int
    let title: String
    let price: Double
}
