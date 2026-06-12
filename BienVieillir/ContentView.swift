//
//  ContentView.swift
//  BienVieillir
//
//  Created by Guillaume Richard on 10/06/2026.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        TabView {
            Tab("Activités", systemImage: "figure.walk.circle.fill") {
                Text("Activités")
            }
            
            Tab("Conseils", systemImage: "lightbulb.fill") {
                Text("Conseils")
            }
            
            Tab("Détente", systemImage: "apple.meditate.circle.fill") {
                DetenteView()
            }
            
            Tab("Favoris", systemImage: "star.circle") {
                Text("Favoris")
            }
            
        }
    }
}

#Preview {
    ContentView()
}
