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
                .padding(.top, 4)
            
            ProgressBarView(total: Int(model.bugdget), part: Int(model.spent), color: model.color)
            
            HStack(spacing: 0) {
                Text("\(model.percent)% of the Budget Spent")
                    .font(.caption2)
                    .padding(.bottom, 4)
                Spacer()
            }
            .padding(.leading, 10)
            
            
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
                .font(.subheadline)
                .padding([.leading, .bottom], 10)
                
                Image(systemName: model.image)
                    .font(.largeTitle)
                    .foregroundColor(.blue)
                    .padding(.trailing, 4)
                    .padding(.bottom, 10)
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
