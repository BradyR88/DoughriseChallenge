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
    var image: String = "star.circle"
    var color: Color = .blue
    var bugdget: Int
    var spent: Int
    
    var left: Int {
        bugdget -  spent
    }
    var percent: String {
        String(Int((Double(spent)/Double(bugdget)) * 100))
    }
    
    static let example = WidgetModel(name: "Rent", image: "house.circle", bugdget: 900, spent: 500)
    static let exampleArray = [WidgetModel(name: "Rent", image: "house.circle", color: .purple, bugdget: 900, spent: 500), WidgetModel(name: "School Loans", image: "book.circle", color: .blue, bugdget: 850, spent: 800), WidgetModel(name: "Eating Out", image: "fork.knife.circle", color: .yellow, bugdget: 150, spent: 25)]
}
