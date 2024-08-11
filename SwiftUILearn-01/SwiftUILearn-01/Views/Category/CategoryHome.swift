//
//  CategoryHome.swift
//  SwiftUILearn-01
//  按分类显示主界面
//  Created by L on 2024/7/14.
//

import SwiftUI

struct CategoryHome: View {
    
    @Environment(ModelData.self) var modelData
    @State private var showingProfile = false
    
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
            .listStyle(.inset) // 应用于 List 视图，用于改变列表的视觉样式 列表项不会延伸到屏幕边缘。会在列表周围留出一些空白，给人一种更加精致和有层次感的外观。
            .navigationTitle("Featured") // Featured 特征
            .toolbar{   // 为当前视图添加一个工具栏
                Button{ // 在工具栏中创建一个按钮
                    showingProfile.toggle() // 根据showingProfile 布尔值进行切换
                } label: {
                    Label("User Profile", systemImage: "person.crop.circle")    // 显示 User Profile 以及图标
                }
            }
            .sheet(isPresented: $showingProfile){ // 片视图
                ProfileHost().environment(modelData) // 其中包含ProfileHost
            }
        } detail: {
            Text("Select a Landmark")
        }
    }
}

#Preview {
    CategoryHome().environment(ModelData())
}
