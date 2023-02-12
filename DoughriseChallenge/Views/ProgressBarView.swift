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
                    .frame(height: 35)
                    .cornerRadius(10)
                    .padding(.horizontal, padding)
                    .foregroundColor(color)
                
                Rectangle()
                    .frame(height: 35)
                    .cornerRadius(10)
                    .padding(.horizontal, padding)
                    .foregroundColor(.black)
                    .opacity(0.5)
                
                Rectangle()
                    .frame(width: progressWidth(geo: geo), height: 35)
                    .cornerRadius(10)
                    .padding(.leading, 15)
                    .foregroundColor(color)
            }
        }
        .frame(height: 35)
    }
}

struct ProgressBar_Previews: PreviewProvider {
    static var previews: some View {
        ProgressBarView(total: 100, part: 0)
    }
}

extension ProgressBarView {
    func progressWidth(geo geometeyProxy: GeometryProxy) -> CGFloat {
        
        let ratio: Double = Double(part)/Double(total)
        let width = geometeyProxy.size.width
        let barWidth: CGFloat = (width * ratio) - (padding + padding)
        
        if barWidth >= 7 {
            return barWidth
        } else {
            return 7
        }
    }
}
