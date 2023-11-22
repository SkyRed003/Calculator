//
//  NanoChallengeApp.swift
//  NanoChallenge
//
//  Created by Francesco Palumbo on 14/11/23.
//

import SwiftUI
import SwiftData

@main
struct NanoChallengeApp: App {
    var body: some Scene {
        WindowGroup {
            ContentView()
        }
        .modelContainer(for: DataItem.self)
        .environment(\.accessibilityEnabled,true)
    }
}
