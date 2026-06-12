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
            Tab("Suivi", systemImage: "person.fill") {
                
            }
            
            Tab("Activités", systemImage: "star.circle") {
                ActivityDetailsView()
            }
            
            Tab("Détente", systemImage: "apple.meditate.circle.fill") {
                DetenteView()
            }
            
            Tab("Conseils", systemImage: "lightbulb.fill") {
                ConseilsView()
            }
            
        }
    }
}

#Preview {
    ContentView()
        .environment(ViewModel())
}
