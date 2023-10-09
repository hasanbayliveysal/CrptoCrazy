//
//  ContentView.swift
//  CryptoCrazySwiftUI
//
//  Created by Veysal on 9.10.2023.
//

import SwiftUI

struct ContentView: View {
    
    @ObservedObject var cryptoCurrencyVM : CryptoCurrencyVM
    
    init() {
        self.cryptoCurrencyVM = CryptoCurrencyVM()
    }
    
    var body: some View {
        NavigationView {
            ZStack {
                ProgressView()
                List(cryptoCurrencyVM.cryptoList, id : \.id) { cryptos in
                    NavigationLink(destination: DetailsView(selectedCryptos: cryptos )) {
                        VStack {
                            Text(cryptos.currency)
                                .foregroundColor(.blue)
                                .frame(maxWidth: .infinity,alignment: .leading)
                            Text(cryptos.price)
                                .frame(maxWidth: .infinity,alignment: .leading)
                        }
                    }
                }.navigationTitle("Crypto Crazy")
            }.task {
                
                await cryptoCurrencyVM.getCryptos(url: URL(string: "https://raw.githubusercontent.com/atilsamancioglu/K21-JSONDataSet/master/crypto.json")!)
            }
        }
      
    }
    
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
