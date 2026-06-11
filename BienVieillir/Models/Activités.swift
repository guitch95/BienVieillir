//
//  Activités.swift
//  BienVieillir
//
//  Created by Guillaume Richard on 11/06/2026.
//

import Foundation
import SwiftUI

struct Activites : Identifiable {
    var id = UUID()
    var name: String
    var description: String
    var color: Color?
    var image: ImageResource?
    var localization: String
    var date: String
    var time: String
}
