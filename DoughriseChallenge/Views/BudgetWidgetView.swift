//
//  BudgetWidget.swift
//  DoughriseChallenge
//
//  Created by Brady Robshaw on 2/10/23.
//

import SwiftUI

struct BudgetWidgetView: View {
    
    var model: WidgetModel
    
    var body: some View {
        VStack (spacing: 5) {
            Text(model.name)
                .font(.title3)
            
            ProgressBarView(total: Int(model.bugdget), part: Int(model.spent), color: model.color)
            
            Text("75% of the Budget Spent")
                .font(.caption2)
                .padding(.bottom, 4)
            
            HStack {
                VStack {
                    HStack {
                        Text("Budget")
                        Spacer()
                        Text("$\(model.bugdget)")
                    }
                    HStack {
                        Text("Spent")
                        Spacer()
                        Text("$\(model.spent)")
                            .foregroundColor(.red)
                    }
                    HStack {
                        Text("Left")
                        Spacer()
                        Text("$\(model.left)")
                            .foregroundColor(.green)
                    }
                }
                .padding([.leading, .bottom], 5)
                
                Image(systemName: "house.circle")
                    .font(.largeTitle)
                    .foregroundColor(.blue)
            }
        }
        .dropShadow()
    }
}

struct BudgetWidget_Previews: PreviewProvider {
    static var previews: some View {
        BudgetWidgetView(model: WidgetModel(name: "Rent", bugdget: 900, spent: 500))
            .frame(width: 190, height: 150)
    }
}
