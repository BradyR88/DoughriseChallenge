//
//  BudgetWidget.swift
//  DoughriseChallenge
//
//  Created by Brady Robshaw on 2/10/23.
//

import SwiftUI

struct BudgetWidgetView: View {
    
    @State private var spent: Double = 50
    
    var body: some View {
        VStack (spacing: 5) {
            Text("Rent")
                .font(.title3)
            
            ProgressBarView(total: 100, part: Int(spent))
            
            Text("75% of the Budget Spent")
                .font(.caption2)
                .padding(.bottom, 4)
            
            HStack {
                VStack {
                    HStack {
                        Text("Budget")
                        Spacer()
                        Text("$900")
                    }
                    HStack {
                        Text("Spent")
                        Spacer()
                        Text("$900")
                            .foregroundColor(.red)
                    }
                    HStack {
                        Text("Left")
                        Spacer()
                        Text("$900")
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
        BudgetWidgetView()
            .frame(width: 190, height: 150)
    }
}
