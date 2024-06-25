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
        VStack(alignment: .leading) { // 使用 VStack 将视图垂直排列 HStack 水平排列
//            Image(systemName: "globe") // 添加一个系统图标，图标名称为 "globe"
//                .imageScale(.large) // 设置图标的尺寸为大
//                .foregroundStyle(.tint) // 设置图标的前景样式为 tint
            Text("Turtle Rock")// 添加一个文本视图，显示 "Hello, world!"
                .font(.title)   // 设置文本字体
                .foregroundColor(.black)    // 设置文本颜色
            HStack { // 内部嵌套一个水平布局
                Text("Joshua Tree National Park").font(.subheadline)
                Spacer()    // 添加空间
                Text("California").font(.subheadline)
            }
        }
        .padding() // 给 VStack 添加填充（padding）
    }
}

// 使用 #Preview 来预览 ContentView
#Preview {
    ContentView() // 返回 ContentView 视图实例
}
