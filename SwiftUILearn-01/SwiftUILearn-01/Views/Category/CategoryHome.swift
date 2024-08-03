//
//  CategoryHome.swift
//  SwiftUILearn-01
//
//  Created by L on 2024/7/14.
//

import SwiftUI

struct CategoryHome: View {
    
    @Environment(ModelData.self) var modelData
    
    var body: some View {
        NavigationSplitView{    // 动态生成
            List{
                // 获取modeldata的 地形类别数组categories的 keys的 排序方法
                ForEach(modelData.categories.keys.sorted(), id: \.self){ key in
                    Text(key)
                }
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
