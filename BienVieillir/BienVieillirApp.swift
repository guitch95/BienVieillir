//
//  BienVieillirApp.swift
//  BienVieillir
//
//  Created by Guillaume Richard on 10/06/2026.
//

import SwiftUI

@main
struct BienVieillirApp: App {
    @State private var vm = ViewModel()
    var body: some Scene {
        WindowGroup {
            ActivityDetailsView()
                .environment(vm)
        }
    }
}
