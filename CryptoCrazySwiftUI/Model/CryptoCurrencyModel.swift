//
//  CryptoCurrancyModel.swift
//  CryptoCrazySwiftUI
//
//  Created by Veysal on 9.10.2023.
//

import Foundation

struct CryptoCurrencyModel : Hashable, Decodable, Identifiable {
    let id = UUID()
    
    
    let currency : String
    let price : String
    
    
    public enum CodingKeys : String, CodingKey {
        case currency = "currency"
        case price = "price"
    }
    
    
    
}
