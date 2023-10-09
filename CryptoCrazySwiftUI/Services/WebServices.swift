//
//  WebServices.swift
//  CryptoCrazySwiftUI
//
//  Created by Veysal on 9.10.2023.
//

import Foundation

class WebServices {
    
    func downloadCryptos (url : URL) async throws -> [CryptoCurrencyModel] {
        let (data, _) = try await URLSession.shared.data(from: url)
        
        let cryptos = try? JSONDecoder().decode([CryptoCurrencyModel].self, from: data)
        
        return cryptos ?? []
    }
    
    
}
