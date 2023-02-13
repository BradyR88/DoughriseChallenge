//
//  WidgetGirdView.swift
//  DoughriseChallenge
//
//  Created by Brady Robshaw on 2/11/23.
//

import SwiftUI

struct WidgetGirdView: View {
    
    let columns = [
        GridItem(.flexible()),
        GridItem(.flexible())
    ]
    
    @State private var spent: Double = 50
    
    var body: some View {
        ScrollView(showsIndicators: false) {
            LazyVGrid(columns: columns) {
                ForEach(WidgetModel.exampleArray) { model in
                    BudgetWidgetView(model: model)
                }
                BudgetWidgetView(model: WidgetModel(name: "Groceries", image: "bag.circle", color: .mint, bugdget: 100, spent: Int(spent)))
                AddCategoryWidgetView()
            }
            
            
            Slider(value: $spent, in: 0...100)
                .padding(.top, 50)
            Text("This slider is not part of the official UI it's just here to help illustrate that the widgets can dynamically update.")
                .font(.caption)
        }
    }
}

struct WidgetGirdView_Previews: PreviewProvider {
    static var previews: some View {
        WidgetGirdView()
            .padding()
    }
}
