//  SwiftUILearn_01App.swift
//  SwiftUILearn-01
//  这个文件是 SwiftUI 应用的入口点
//  Created by L on 2024/6/25.
//

import SwiftUI // 导入 SwiftUI 框架

@main // @main 标记表明这是应用程序的入口点
struct SwiftUILearn_01App: App { // 定义 SwiftUILearn_01App 结构体，遵循 App 协议
    var body: some Scene { // 定义一个计算属性 body，它返回一个 Scene
        WindowGroup { // 创建一个新的窗口组，这是应用的主用户界面
            ContentView() // 设置 ContentView 作为窗口组的内容
        }
    }
}
