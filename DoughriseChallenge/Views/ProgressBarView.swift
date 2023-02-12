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
    private let padding: CGFloat = 15
    
    var body: some View {
        GeometryReader { geo in
            ZStack (alignment: .leading){
                Rectangle()
                    .fill(color)
                    .frame(height: 35)
                    .cornerRadius(10)
                    .padding(.horizontal, padding)
                
                Rectangle()
                    .frame(height: 35)
                    .cornerRadius(10)
                    .padding(.horizontal, padding)
                    .foregroundColor(.white)
                    .opacity(0.7)
                
                Rectangle()
                    .fill(
                        LinearGradient(gradient: Gradient(colors: [color.opacity(0.3), color, color]), startPoint: .leading, endPoint: .trailing)
                    )
                    .frame(width: progressWidth(geo: geo), height: 35)
                    .cornerRadius(10)
                    .padding(.leading, 15)
            }
        }
        .frame(height: 35)
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
}
