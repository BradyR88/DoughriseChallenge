//
//  DrawShadowViewModifier.swift
//  DoughriseChallenge
//
//  Created by Brady Robshaw on 2/11/23.
//

import SwiftUI

struct DropShadow: ViewModifier {
    func body(content: Content) -> some View {
        ZStack {
            Rectangle()
                .cornerRadius(8)
                .foregroundColor(.white)
                .shadow(radius: 5)
            
            content
        }
        .padding(5)
        
    }
}

extension View {
    func dropShadow() -> some View {
        modifier(DropShadow())
    }
}
