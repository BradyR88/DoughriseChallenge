//
//  BudgetWidget.swift
//  DoughriseChallenge
//
//  Created by Brady Robshaw on 2/10/23.
//

import SwiftUI

struct BudgetWidget: View {
    var body: some View {
        VStack {
            Text("Rent")
                .font(.title3)
            
            ProgressBar(total: 100, part: 50)
            
            Text("75% of the Budget Spent")
                .font(.callout)
                .padding(.bottom, 4)
            
            HStack {
                VStack {
                    HStack {
                        Text("Budget")
                        Text("$900")
                    }
                    HStack {
                        Text("Spent")
                        Text("$900")
                            .foregroundColor(.red)
                    }
                    HStack {
                        Text("Left")
                        Text("$900")
                            .foregroundColor(.green)
                    }
                }
                
                Image(systemName: "house.circle")
                    .font(.largeTitle)
                    .foregroundColor(.blue)
            }
            
        }
        .frame(width: 300)
    }
}

struct BudgetWidget_Previews: PreviewProvider {
    static var previews: some View {
        BudgetWidget()
    }
}
