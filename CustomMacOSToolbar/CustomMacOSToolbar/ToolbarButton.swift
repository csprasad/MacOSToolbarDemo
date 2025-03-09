//
//  ToolbarButton.swift
//  CustomMacOSToolbar
//
//  Created by CS Prasad on 09/03/25.
//

import SwiftUI

// 📌 Reusable Toolbar Button Component
struct ToolbarButton: View {
    var icon: String?
    var text: String?
    var action: () -> Void

    var body: some View {
        Button(action: action) {
            if let icon = icon {
                Image(systemName: icon)
            } else if let text = text {
                Text(text)
            }
        }
    }
}
