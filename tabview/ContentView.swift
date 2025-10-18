//
//  ContentView.swift
//  tabview
//
//  Created by cisstudent on 10/18/25.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        TabView {
            // Tab 1
            ZStack {
                Image("chocolate_icon")
                    .resizable()
                    .scaledToFill() // fills while preserving aspect ratio (may crop)
                    .frame(maxWidth: .infinity, maxHeight: .infinity)
                    .clipped()
            }
            .ignoresSafeArea() // truly edge-to-edge
            .tabItem {
                Label("Chocolate", systemImage: "square.grid.3x3")
            }

            // Tab 2
            ZStack {
                Image("hard")
                    .resizable()
                    .scaledToFill() // fills while preserving aspect ratio (may crop)
                    .frame(maxWidth: .infinity, maxHeight: .infinity)
                    .clipped()
            }
            .ignoresSafeArea()
            .tabItem {
                Label("Hard", systemImage: "cube.fill")
            }

            // Tab 3
            ZStack {
                Image("mikenike")
                    .resizable()
                    .scaledToFill() // fills while preserving aspect ratio (may crop)
                    .frame(maxWidth: .infinity, maxHeight: .infinity)
                    .clipped()
            }
            .ignoresSafeArea() // truly edge-to-edge
            .tabItem {
                Label("Chewy", systemImage: "capsule.fill")
            }
        }
    }
}

#Preview {
    ContentView()
}
