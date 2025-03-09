//
//  customToolBar.swift
//  CustomMacOSToolbar
//
//  Created by CS Prasad on 09/03/25.
//

import SwiftUI

struct CustomToolbar: View {
    @Binding var isDarkMode: Bool
    @Binding var isFormatting: Bool
    @Binding var lastAction: String
    @Environment(\.colorScheme) private var colorScheme

    var body: some View {
        HStack(spacing: 12) {
            // 📌 File Title beside window control buttons
            HStack {
                Text("main.swift")
                    .font(.headline)
                Spacer()
                ToolbarButton(icon: isDarkMode ? "sun.max.fill" : "moon.fill") {
                    isDarkMode.toggle()
                    lastAction = isDarkMode ? "Dark mode enabled" : "Light mode enabled"
                }.help("Toggle Dark Mode")

                ToolbarButton(icon: "square.and.arrow.up") {
                    lastAction = "Share clicked"
                }.help("Share")

                RunButton(isFormatting: $isFormatting, lastAction: $lastAction)
            }
            
            Spacer(minLength: 0)
            Divider()
            Spacer(minLength: 0)
            
            
            HStack(spacing: 12) {
                Text("Output")
                    .font(.headline)
                Spacer()
                ToolbarButton(text: "Clear") {
                    lastAction = ""
                }
            }

            
        }
        .frame(maxWidth: .infinity)
        .padding(.horizontal, 10)
        .preferredColorScheme(isDarkMode ? .dark : .light)
    }
}
