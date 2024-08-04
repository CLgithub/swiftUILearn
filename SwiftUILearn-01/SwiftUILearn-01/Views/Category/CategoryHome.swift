//
//  CategoryHome.swift
//  SwiftUILearn-01
//  按分类显示主界面
//  Created by L on 2024/7/14.
//

import SwiftUI

struct CategoryHome: View {
    
    @Environment(ModelData.self) var modelData
    
    var body: some View {
        NavigationSplitView{    // 动态生成
            List{
                modelData.features[0].image
                    .resizable()
                    .scaledToFill()
                    .frame(height: 200)
                    .clipped()
                    .listRowInsets(EdgeInsets())    // 设置边缘为0
                // 获取modeldata的 地形类别数组categories的 keys的 排序方法
                // id: \.self: 这指定了如何唯一标识每个元素。在这里，键本身被用作标识符
                ForEach(modelData.categories.keys.sorted(), id: \.self){ key in
                    CategoryRow(categoryName: key, items: Array(modelData.categories[key]!))
                }
                .listRowInsets(EdgeInsets())
            }
            .navigationTitle("Featured") // Featured 特征
        } detail: {
            Text("Select a Landmark")
        }
    }
}

#Preview {
    CategoryHome().environment(ModelData())
}
