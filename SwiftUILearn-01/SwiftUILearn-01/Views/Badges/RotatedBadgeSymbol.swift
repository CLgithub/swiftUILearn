//
//  RotatedBadgeSymbol.swift
//  SwiftUILearn-01
//  测试调整角度
//  Created by L on 2024/7/7.
//

import SwiftUI

struct RotatedBadgeSymbol: View {
    
    let angle: Angle
    
    var body: some View {
        BadgeSymbol().padding(-60).rotationEffect(angle, anchor: .bottom)
    }
}

#Preview {
    RotatedBadgeSymbol(angle: Angle(degrees: 5))
}
