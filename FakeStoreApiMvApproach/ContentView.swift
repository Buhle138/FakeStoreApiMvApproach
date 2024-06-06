//
//  ContentView.swift
//  FakeStoreApiMvApproach
//
//  Created by Buhle Radzilani on 2024/06/06.
//

import SwiftUI

struct ContentView: View {
    @EnvironmentObject private var storeModel: StoreModel
    private func populateProducts() async {
        do{
           try await storeModel.populateProducts()
        }catch{
            print(error)
        }
    }
    
    
    var body: some View {
        VStack {
            
            List(storeModel.products) {product in
                Text(product.title)
                
            }
          
        }.task {
        await populateProducts()
            
        }
        .padding()
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView().environmentObject(StoreModel(webService: Webservice()))
    }
}
