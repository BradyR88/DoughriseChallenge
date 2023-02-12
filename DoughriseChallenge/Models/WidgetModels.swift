//
//  WidgetModels.swift
//  DoughriseChallenge
//
//  Created by Brady Robshaw on 2/12/23.
//

import SwiftUI
import Foundation

struct WidgetModel: Identifiable {
    let id: UUID = UUID()
    let name: String
    var color: Color = .blue
    var bugdget: Int
    var spent: Int
    
    var left: Int {
        bugdget -  spent
    }
    
    static let example = WidgetModel(name: "Rent", bugdget: 900, spent: 500)
    static let exampleArray = [WidgetModel(name: "Rent", bugdget: 900, spent: 500), WidgetModel(name: "School Lons", color: .red, bugdget: 850, spent: 850), WidgetModel(name: "Eating Out", color: .yellow, bugdget: 150, spent: 25)]
}
