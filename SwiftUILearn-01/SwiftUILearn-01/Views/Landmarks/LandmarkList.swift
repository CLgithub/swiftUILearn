//
//  LandmarkList.swift
//  SwiftUILearn-01
//  呈现多行数据
//  Created by L on 2024/6/26.
//

import SwiftUI

struct LandmarkList: View {
    @Environment(ModelData.self) var modelData // @Environment 从环境（类似上下文）中读取数据（通常是共享数据），数据类型ModelData.self(类似ModelData.class) 赋值给modelData
    @State private var showFavoritesOnly=false  // 创建一个私有变量 @State：这是一个属性包装器（property wrapper），用于在 SwiftUI 视图中创建可变状态。当这个状态变化时，SwiftUI 会自动重新渲染视图。
    
    var filteredLandmarks:[Landmark]{   // 创建一个数组，数组值通过landmarks过滤而来
        modelData.landmarks.filter{   // 过滤
            //  收藏的 或者 是（其他显示）
            //  收藏的 或者 否（其他不显示）
            landmark in (landmark.isFavorite || !showFavoritesOnly )   // 过滤条件：!showFavoritesOnly 或者 isFavorite
        }
    }
    
    var body: some View {
        NavigationSplitView{ // 动态生成
            List(){
                Toggle(isOn: $showFavoritesOnly){   // 添加开关按钮
                    Text("Favorites only")
                }
                ForEach(filteredLandmarks) { // 列表方式呈现 filteredLandmarks
                    landmark1 in NavigationLink{ // 遍历landmarks 单个是landmark1
                        LandmarkDetail(landmark: landmark1)    // 每一个，一个链接到 LandmarkDetail, 并传递landmark1
                    } label: {
                        LandmarkRow(landmark: landmark1) // 每一个，分别交给LandmarkRow
                    }
                }
            }
//            .listStyle(.inset)
            .animation(.default, value: filteredLandmarks) // filteredLandmarks数组发生变化时，添加过渡动画
            .navigationTitle("Landmarks")   // 列表标题
        } detail: {
            Text("Select a Landmark")   // 占位符？
        }
    }
}

#Preview {
    LandmarkList().environment(ModelData())
}
