//
//  AddCategoryWidgetView.swift
//  DoughriseChallenge
//
//  Created by Brady Robshaw on 2/12/23.
//

import SwiftUI

struct AddCategoryWidgetView: View {
    var body: some View {
        VStack {
            Text("Add A Category")
                .font(.headline)
            Image(systemName: "plus")
                .resizable()
                .scaledToFit()
                .padding()
                .frame(maxWidth: 85)
        }
        .padding()
        .dropShadow()
    }
}

struct AddCategoryWidgetView_Previews: PreviewProvider {
    static var previews: some View {
        AddCategoryWidgetView()
            .frame(width: 200, height: 200)
    }
}
