//
//  CategoryItem.swift
//  SwiftUILearn-01
//  分类单个显示
//  Created by L on 2024/8/3.
//

import SwiftUI

struct CategoryItem: View {
    var landmark: Landmark
    
    var body: some View {
        VStack(alignment: .leading){    // 创建一个垂直视图，确保堆栈中的内容左对齐
            landmark.image  // 显示地点图片
                .renderingMode(.original)   // 保持图片的原始颜色，不受系统着色的影响
                .resizable()    //允许图片被调整大小
                .frame(width: 155, height: 155) //设置图片的固定尺寸为 155x155 点
                .cornerRadius(5)    // 圆角曲率
            Text(landmark.name)
                .foregroundStyle(.primary)  // 设置文本颜色为主要前景色
                .font(.caption)  // 显示景点名称
        }
        .padding(.leading, 15) // 为整个 VStack 添加 15 点的左侧内边距
    }
}

#Preview {
    CategoryItem(landmark: ModelData().landmarks[0])
}
