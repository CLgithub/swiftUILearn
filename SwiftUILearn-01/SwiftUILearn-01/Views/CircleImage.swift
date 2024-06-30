//
//  CircleImage.swift
//  SwiftUILearn-01
//
//  Created by L on 2024/6/25.
//

import SwiftUI

struct CircleImage: View {
    
    var image: Image
    
    var body: some View {
        image  // 图像
            .clipShape(/*@START_MENU_TOKEN@*/Circle()/*@END_MENU_TOKEN@*/) // 裁剪为圆形
            .overlay{
                Circle().stroke(.white, lineWidth: 4)   // 添加边框 白色 宽度：4
            }
            .shadow(radius: 7) //添加阴影 范围：7
        
    }
}

#Preview {
    CircleImage(image: ModelData().landmarks[0].image)
}
