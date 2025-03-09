//
//  CustomMacOSToolbarApp.swift
//  CustomMacOSToolbar
//
//  Created by CS Prasad on 09/03/25.
//

import SwiftUI

@main
struct CustomMacOSToolbarApp: App {
    var body: some Scene {
        WindowGroup {
            ContentView()
        }
        //MARK: -Enables custom toolbar
        .windowStyle(DefaultWindowStyle()) // Keep macOS native title bar
        .windowToolbarStyle(.unifiedCompact) // Places toolbar next to close/minimize/fullscreen buttons
    }
}
