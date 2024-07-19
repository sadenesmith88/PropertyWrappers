//
//  LearnApp.swift
//  Learn
//
//  Created by Mohammad Azam on 10/26/23.
//

import SwiftUI

@main
struct LearnApp: App {
    var body: some Scene {
        WindowGroup {
            ContentView()
            .environmentObject(AppState())
        }
    }
}
