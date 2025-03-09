//
//  ContentView.swift
//  CustomMacOSToolbar
//
//  Created by CS Prasad on 09/03/25.
//

import SwiftUI

struct ContentView: View {
    @State private var isDarkMode = false
    @State private var lastAction = "No action yet"
    @State private var isFormatting = false

    var body: some View {
        VStack(spacing: 0) {
            // 🔥 Custom Toolbar Positioned Manually
            CustomToolbar(isDarkMode: $isDarkMode, isFormatting: $isFormatting, lastAction: $lastAction)
                .frame(maxWidth: .infinity, maxHeight: 40)
                .padding(.horizontal, 10)
                .background(Color(NSColor.windowBackgroundColor))
                .overlay(Divider(), alignment: .bottom)

            VStack {
                Text("\(lastAction)")
                    .font(.headline)
                    .frame(alignment: .center)
            }
            .frame(maxWidth: .infinity, maxHeight: .infinity)
            
        }
        .frame(minWidth: 800, minHeight: 200)
        .toolbar {
           ToolbarItemGroup(placement: .automatic) {
               Button {
                   NSApp.orderFrontStandardAboutPanel()
               } label: {
                   Image(systemName: "info.circle")
               }
               .help("info")
               .disabled(isFormatting)
           }
       }
    }
}


struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}



