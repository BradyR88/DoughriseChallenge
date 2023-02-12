//
//  ProgressBar.swift
//  DoughriseChallenge
//
//  Created by Brady Robshaw on 2/11/23.
//

import SwiftUI

struct ProgressBar: View {
    
    var total: Int
    var part: Int
    var color: Color = .blue
    
    var body: some View {
        GeometryReader { geo in
            ZStack (alignment: .leading){
                Rectangle()
                    .frame(height: 35)
                    .cornerRadius(10)
                    .padding(.horizontal, 15)
                    .foregroundColor(color)
                
                Rectangle()
                    .frame(height: 35)
                    .cornerRadius(10)
                    .padding(.horizontal, 15)
                    .foregroundColor(.black)
                    .opacity(0.5)
                
                Rectangle()
                    .frame(width: progressWidth(geo: geo), height: 35)
                    .cornerRadius(10)
                    .padding(.leading, 15)
                    .padding(.trailing, 100)
                    .foregroundColor(color)
            }
        }
        .frame(height: 35)
    }
}

struct ProgressBar_Previews: PreviewProvider {
    static var previews: some View {
        ProgressBar(total: 100, part: 25)
    }
}

extension ProgressBar {
    func progressWidth(geo geometeyProxy: GeometryProxy) -> CGFloat {
        
        let ratio: Double = Double(part)/Double(total)
        let width = geometeyProxy.size.width
        let barWidth: CGFloat = width * ratio
        
        if barWidth >= 10 {
            return barWidth
        } else {
            return 10
        }
    }
}
