//
//  DetailsView.swift
//  CryptoCrazySwiftUI
//
//  Created by Veysal on 9.10.2023.
//

import SwiftUI

struct DetailsView: View {
    
    var selectedCryptos : CryptoViewModel
    var body: some View {
        Text(selectedCryptos.currency)
    }
}

struct DetailsView_Previews: PreviewProvider {
    static var previews: some View {
        DetailsView(selectedCryptos: CryptoViewModel(crypto: CryptoCurrencyModel(currency: "", price: "")))
    }
}
