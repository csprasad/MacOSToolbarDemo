//
//  RunButton.swift
//  CustomMacOSToolbar
//
//  Created by CS Prasad on 09/03/25.
//

import SwiftUI

// 📌 Run Button with Progress Indicator
struct RunButton: View {
    @Binding var isFormatting: Bool
    @Binding var lastAction: String

    var body: some View {
        HStack(spacing: 5) {
            Button(action: {
                isFormatting = true
                lastAction = "Code running"

                // Simulate formatting delay
                DispatchQueue.main.asyncAfter(deadline: .now() + 2.0) {
                    isFormatting = false
                    lastAction = "Executed"
                }
            }) {
                Text("Run")
            }
            .frame(width: 80, height: 30)
            .disabled(isFormatting)

            if isFormatting {
                ProgressView()
                    .progressViewStyle(CircularProgressViewStyle())
                    .frame(width: 16, height: 16) // Small size
                    .scaleEffect(0.5)
            }
        }
    }
}
