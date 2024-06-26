//
//  SwiftUIView.swift
//  SwiftUILearn-01
//
//  Created by L on 2024/6/26.
//

import SwiftUI

struct LandmarkDetail: View {
    
    var landmark: Landmark
    
    var body: some View {
        ScrollView{ // 总的嵌套 垂直布局VStack 改为 ScrollView 便于滚动查看
            MapView(coordinate: landmark.locationCoordinate).frame(height: 300)    // 添加地图视图，高300
            
            CircleImage(image: landmark.image).offset(y:-160).padding(.bottom,-180) // 距离上面的距离-160，下部距离自己的距离-180
            
            VStack(alignment: .leading) { // 使用 VStack 将视图垂直排列 HStack 水平排列
    //            Image(systemName: "globe") // 添加一个系统图标，图标名称为 "globe"
    //                .imageScale(.large) // 设置图标的尺寸为大
    //                .foregroundStyle(.tint) // 设置图标的前景样式为 tint
                Text(landmark.name)// 添加一个文本视图，显示 "Hello, world!"
                    .font(.title)   // 设置文本字体
                    .foregroundColor(.black)    // 设置文本颜色
                HStack { // 内部嵌套一个水平布局
                    Text(landmark.park)
                    Spacer()    // 添加空间
                    Text(landmark.state)
                }
                .font(.subheadline) // 统一设置字体 Text("贵阳市 观山湖区")与 Text("贵州省")
                .foregroundColor(.secondary) // 统一设置颜色
                
                Divider()   // 分割线
                Text("关于此地 \(landmark.name)") .font(.title2)
                Text(landmark.description)
                
            }
            .padding() // 给 VStack 添加填充（padding）
            Spacer()
        }
        .navigationTitle(landmark.name)  // 标题
        .navigationBarTitleDisplayMode(.inline)
    }
}

#Preview {
    LandmarkDetail(landmark: landmarks[0])
}
