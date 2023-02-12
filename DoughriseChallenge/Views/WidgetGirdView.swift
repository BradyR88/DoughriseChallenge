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
    
    var body: some View {
        ScrollView {
            LazyVGrid(columns: columns) {
                ForEach(WidgetModel.exampleArray) { model in
                    BudgetWidgetView(model: model)
                }
                AddCategoryWidgetView()
            }
        }
    }
}

struct WidgetGirdView_Previews: PreviewProvider {
    static var previews: some View {
        WidgetGirdView()
            .padding()
    }
}
