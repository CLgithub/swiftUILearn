//
//  CategoryRow.swift
//  SwiftUILearn-01
//  显示单行
//  Created by L on 2024/7/14.
//

import SwiftUI

struct CategoryRow: View {
    var categoryName: String
    var items: [Landmark]
    
    var body: some View {
        VStack(alignment: .leading) {
            Text(categoryName)   // 显示类别名称
                .font(.headline)
                .padding(.leading, 15)
                .padding(.top, 5)
            
            ScrollView(.horizontal, showsIndicators: false){    // 创建一个水平滚动视图 showsIndicators 是否显示滚动指示器
                HStack(alignment: .top, spacing: 0) { // 创建一个水平堆栈 将内容对齐到顶部 设置堆栈中项目间的间距为0
                    ForEach(items) { landmark in
                        CategoryItem(landmark: landmark)
                    }
                }
            }
            .frame(height: 185)
        }
    }
}

#Preview {
    let landmarks = ModelData().landmarks
    return CategoryRow(
        categoryName: landmarks[0].category.rawValue,
        items: Array(landmarks.prefix(4))
    )
}
