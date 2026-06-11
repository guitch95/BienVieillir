//
//  Conseils.swift
//  BienVieillir
//
//  Created by Guillaume Richard on 11/06/2026.
//

import Foundation
import SwiftUI

struct Conseils : Identifiable {
    var id = UUID()
    var title: String
    var description: String
    var color: Color?
    var image: ImageResource?
}
