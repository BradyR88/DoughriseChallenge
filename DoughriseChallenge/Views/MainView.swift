//
//  MainView.swift
//  DoughriseChallenge
//
//  Created by Brady Robshaw on 2/12/23.
//

import SwiftUI

struct MainView: View {
    var body: some View {
        TabView {
            ContentView()
                .tabItem {
                    Label("Home", systemImage: "house")
                }
            
            Text("Hello World")
                .tabItem {
                    Label("History", systemImage: "arrow.up.right")
                }
            
            Text("Hello World")
                .tabItem {
                    Label("Transactions", systemImage: "plus.circle")
                }
            
            Text("Hello World")
                .tabItem {
                    Label("Goals", systemImage: "star")
                }
            
            Text("Hello World")
                .tabItem {
                    Label("Settings", systemImage: "gearshape")
                }
        }
    }
}

struct MainView_Previews: PreviewProvider {
    static var previews: some View {
        MainView()
    }
}
