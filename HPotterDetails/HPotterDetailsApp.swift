//
//  HPotterDetailsApp.swift
//  HPotterDetails
//
//  Created by joe on 9/17/24.
//

import SwiftUI

@main
struct HPotterDetailsApp: App {
    @StateObject private var store = Store()
    @StateObject private var game = Game()
    
    var body: some Scene {
        WindowGroup {
            ContentView()
                .environmentObject(store)
                .environmentObject(game)
                .task {
                    await store.loadProducts()
                }
        }
    }
}
