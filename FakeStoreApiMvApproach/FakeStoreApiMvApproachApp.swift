//
//  FakeStoreApiMvApproachApp.swift
//  FakeStoreApiMvApproach
//
//  Created by Buhle Radzilani on 2024/06/06.
//

import SwiftUI

@main
struct FakeStoreApiMvApproachApp: App {
    
    @StateObject private var storeModel = StoreModel(webService: Webservice())
    
    var body: some Scene {
        WindowGroup {
            //All the variables are now available within the content view. 
            ContentView().environmentObject(storeModel)
        }
    }
}
