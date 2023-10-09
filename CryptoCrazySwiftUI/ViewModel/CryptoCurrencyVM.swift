//
//  CryptoCurrencyVM.swift
//  CryptoCrazySwiftUI
//
//  Created by Veysal on 9.10.2023.
//

import Foundation

@MainActor
class CryptoCurrencyVM : ObservableObject {
    
    @Published var cryptoList = [CryptoViewModel]()
    let webServices = WebServices()
     
    func getCryptos(url: URL) async {
        do {
            let cryptos = try await webServices.downloadCryptos(url: url)
                self.cryptoList = cryptos.map(CryptoViewModel.init)
        } catch {
           print("There is an error")
        }
    }
    
}

struct CryptoViewModel {
    
    let crypto : CryptoCurrencyModel
    
    var id : UUID? {
        crypto.id
    }
    
    var currency : String {
        crypto.currency
    }
    
    var price : String {
        crypto.price
    }
    
}
