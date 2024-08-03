//  ContentView.swift
//  SwiftUILearn-01
//  这个文件定义了应用的主要视图内容
//  Created by L on 2024/6/25.
//

import SwiftUI // 导入 SwiftUI 框架

// 定义 ContentView 结构体，遵循 View 协议
struct ContentView: View {
    // 定义一个计算属性 body，它返回一些视图内容
    var body: some View {
        Badge() // 徽章
        LandmarkList()  // 列表视图
        HikeView(hike: ModelData().hikes[0]) .padding() // 动画视图
//        Spacer()
    }
}

// 使用 #Preview 来预览 ContentView
#Preview {
    ContentView() // 返回 ContentView 视图实例
        .environment(ModelData())
}
