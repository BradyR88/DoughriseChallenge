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
    var percent: String {
        String(Int((Double(spent)/Double(bugdget)) * 100))
    }
    
    static let example = WidgetModel(name: "Rent", bugdget: 900, spent: 500)
    static let exampleArray = [WidgetModel(name: "Rent", color: .purple, bugdget: 900, spent: 500), WidgetModel(name: "School Loans", color: .blue, bugdget: 850, spent: 800), WidgetModel(name: "Eating Out", color: .yellow, bugdget: 150, spent: 25)]
}
