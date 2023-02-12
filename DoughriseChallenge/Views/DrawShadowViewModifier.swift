//
//  DrawShadowViewModifier.swift
//  DoughriseChallenge
//
//  Created by Brady Robshaw on 2/11/23.
//

import SwiftUI

struct DropShadow: ViewModifier {
    @Environment(\.colorScheme) var colorScheme
    
    func body(content: Content) -> some View {
        ZStack {
            Rectangle()
                .cornerRadius(8)
                .foregroundColor(colorScheme == .dark ? .black : .white)
                .shadow(color: colorScheme == .dark ? .gray.opacity(0.33) : Color(.sRGBLinear, white: 0, opacity: 0.33), radius: 5)
            
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
