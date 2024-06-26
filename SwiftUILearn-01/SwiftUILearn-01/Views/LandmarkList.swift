//
//  LandmarkList.swift
//  SwiftUILearn-01
//  呈现多行数据
//  Created by L on 2024/6/26.
//

import SwiftUI

struct LandmarkList: View {
    var body: some View {
        NavigationSplitView{ // 动态生成
            List(landmarks){    // 列表方式呈现 landmarks
                landmark1 in NavigationLink{ // 遍历landmarks 单个是landmark1
                    LandmarkDetail(landmark: landmark1)    // 每一个，一个链接到 LandmarkDetail, 并传递landmark1
                } label: {
                    LandmarkRow(landmark: landmark1) // 每一个，分别交给LandmarkRow
                }
            }
            .navigationTitle("Landmarks")   // 列表标题
        } detail: {
            Text("Select a Landmark")   // 占位符？
        }
    }
}

#Preview {
    LandmarkList()
}
