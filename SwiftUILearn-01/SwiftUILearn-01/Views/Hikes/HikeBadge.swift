//
//  HikeBadge.swift
//  SwiftUILearn-01
//  根据名字，构建徽章
//  Created by L on 2024/8/11.
//

import SwiftUI

struct HikeBadge: View {
    var name: String
    
    var body: some View {
        VStack(alignment: .center){
           Badge()
                .frame(width: 300, height: 300).scaleEffect(1.0 / 3.0)  // 设置Badge宽高 缩小为原来的 1/3
                .frame(width: /*@START_MENU_TOKEN@*/100/*@END_MENU_TOKEN@*/, height: 100) // 设置放缩后的图标的宽高
            Text(name)
                .font(.caption)
                .accessibilityLabel("Badge for \(name).")
        }
    }
}

#Preview {
    HikeBadge(name: "Preview Testing")
}
