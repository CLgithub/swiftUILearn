//
//  Badge.swift
//  SwiftUILearn-01
//  徽章
//  Created by L on 2024/7/7.
//

import SwiftUI

struct Badge: View {
//    let num : Int = 8
    var badgeSymbols: some View {
        ForEach(0..<8 ) { index in
            RotatedBadgeSymbol(angle: .degrees(Double(index)/Double(8)) * 360.0)
        }
        .opacity(0.5)
        
//        RotatedBadgeSymbol(angle: Angle(degrees: 0)).opacity(0.5)
    }
    
    var body: some View{
        ZStack {
            BadgeBackground()
            GeometryReader{ geometry in
                badgeSymbols.scaleEffect(1.0/4.0, anchor: .top)
                    .position(x: geometry.size.width/2.0, y: (3.0/4.0) * geometry.size.height)
            }
        }
        .scaledToFit()
    }
}

#Preview {
    Badge()
}
