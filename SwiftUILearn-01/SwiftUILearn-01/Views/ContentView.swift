//  ContentView.swift
//  SwiftUILearn-01
//  这个文件定义了应用的主要视图内容
//  Created by L on 2024/6/25.
//

import SwiftUI // 导入 SwiftUI 框架

// 定义 ContentView 结构体，遵循 View 协议
struct ContentView: View {
    
    @State private var selectedTab = 0
    
    // 定义一个计算属性 body，它返回一些视图内容
    var body: some View {
        TabView(selection: $selectedTab) {
            LandmarkList()  // 列表显示景点
                .tabItem {
                    Label("Landmarks", systemImage: "list.bullet")
                }
                .tag(0)
            
            Badge()     // 徽章
                .tabItem {
                    Label("Badge", systemImage: "shield")
                }
                .tag(1)
            HikeView(hike: ModelData().hikes[0])    // 动画
                .padding()
                .tabItem {
                    Label("Hike", systemImage: "figure.hiking")
                }
                .tag(2)
        }
    }
}

// 使用 #Preview 来预览 ContentView
#Preview {
    ContentView() // 返回 ContentView 视图实例
        .environment(ModelData())
}
