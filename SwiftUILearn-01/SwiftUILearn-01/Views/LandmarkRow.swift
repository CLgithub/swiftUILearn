//
//  LandmarkRow.swift
//  SwiftUILearn-01
//  用于显示单行数据
//  Created by L on 2024/6/26.
//

import SwiftUI

struct LandmarkRow: View {
    
    var landmark: Landmark // 定义一个变量，那构造方法也改变了，变成了有参构造方法
    
    var body: some View {
        HStack{
            landmark.image.resizable().frame(width: 50, height: 50)
            Text(landmark.name)
            Spacer()
            if landmark.isFavorite{
                Image(systemName: "star.fill")  // star 图标名称⭐️，fill 充满
                    .foregroundStyle(.yellow)   // 设置图标颜色
            }
        }
    }
}

// 预览
#Preview {
    Group{
        LandmarkRow(landmark: landmarks[0]) // 将数组第0为传入构造方法
        LandmarkRow(landmark: landmarks[1]) // 将数组第0为传入构造方法
    }
}

