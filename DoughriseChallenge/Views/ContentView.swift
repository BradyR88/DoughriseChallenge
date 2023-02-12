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
            Text("SEPTEMBER 2021  >")
                .font(.title3)
            Text("$1,000 SPENT OF $6,000")
                .font(.title2)
                .bold()
            
            ProgressBarView(total: 6000, part: 1000, color: .green)
            
            HStack {
                Text("$6,000 Left")
                Spacer()
                Text("$1,000 Spent")
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
