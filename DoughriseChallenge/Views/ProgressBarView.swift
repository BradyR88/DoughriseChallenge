//
//  ProgressBar.swift
//  DoughriseChallenge
//
//  Created by Brady Robshaw on 2/11/23.
//

import SwiftUI

struct ProgressBarView: View {
    
    var total: Int
    var part: Int
    var color: Color = .blue
    @State private var padding: CGFloat = 15
    @State private var hight: CGFloat = 35
    @State private var radius: CGFloat = 10
    
    var body: some View {
        GeometryReader { geo in
            ZStack (alignment: .leading){
                Rectangle()
                    .fill(color)
                    .frame(height: hight)
                    .cornerRadius(radius)
                    .padding(.horizontal, padding)
                
                Rectangle()
                    .frame(height: hight)
                    .cornerRadius(radius)
                    .padding(.horizontal, padding)
                    .foregroundColor(.white)
                    .opacity(0.7)
                
                Rectangle()
                    .fill(
                        LinearGradient(gradient: Gradient(colors: [color.opacity(0.3), color, color]), startPoint: .leading, endPoint: .trailing)
                    )
                    .frame(width: progressWidth(geo: geo), height: hight)
                    .cornerRadius(radius)
                    .padding(.leading, padding)
            }
            .onAppear { setHight(geo: geo) }
        }
        .frame(height: hight)
    }
}

struct ProgressBar_Previews: PreviewProvider {
    static var previews: some View {
        ProgressBarView(total: 100, part: 50)
    }
}

extension ProgressBarView {
    func progressWidth(geo geometeyProxy: GeometryProxy) -> CGFloat {
        
        let ratio: Double = Double(part)/Double(total)
        let width = geometeyProxy.size.width
        let barWidth: CGFloat = ((width - padding - padding) * ratio)
        
        if barWidth >= 7 {
            return barWidth
        } else {
            return 7
        }
    }
    
    func setHight(geo geometeyProxy: GeometryProxy) {
        let width = geometeyProxy.size.width
        
        if  width >= 250 {
            hight = 35
            radius = 10
            padding = 15
        } else {
            hight = 20
            radius = 5
            padding = 10
        }
    }
}
