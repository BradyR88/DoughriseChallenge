//
//  ContentView.swift
//  DoughriseChallenge
//
//  Created by Brady Robshaw on 2/10/23.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack {
            ZStack {
                Text("SEPTEMBER 2021  >")
                    .font(.title3)
                HStack {
                    Spacer()
                    Image(systemName: "plus")
                        .padding(.trailing)
                }
            }
            
            
            Text("$1,325 SPENT OF $1,900")
                .font(.title2)
                .bold()
            
            ProgressBarView(total: 1900, part: 1325, color: .green)
            
            HStack {
                Text("$6,000 Left")
                Spacer()
                Text("$1,325 Spent")
            }
            .font(.caption)
            .padding(.horizontal)
            
            Text("Breakdown of your Budget")
                .padding(5)
            
            HStack {
                Text("Sort: Alphabetical Order")
                Spacer()
            }
            .font(.subheadline)
            .padding(.horizontal)
            
            WidgetGirdView()
                .padding(.horizontal, 4)
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
