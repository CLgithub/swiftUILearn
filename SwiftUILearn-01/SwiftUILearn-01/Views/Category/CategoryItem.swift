//
//  CategoryItem.swift
//  SwiftUILearn-01
//  显示一个地标
//  Created by L on 2024/8/3.
//

import SwiftUI

struct CategoryItem: View {
    var landmark: Landmark
    
    var body: some View {
        VStack(alignment: .leading){    // 创建一个垂直视图
            landmark.image  // 显示地点图片
                .resizable()
                .frame(width: 155, height: 155)
                .cornerRadius(5)    // 圆角曲率
            Text(landmark.name).font(.caption)  // 显示景点名称
        }
        .padding(.leading, 15)
    }
}

#Preview {
    CategoryItem(landmark: ModelData().landmarks[0])
}
