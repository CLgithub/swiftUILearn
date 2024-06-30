//
//  SwiftUIView.swift
//  SwiftUILearn-01
//
//  Created by L on 2024/6/26.
//

import SwiftUI

struct LandmarkDetail: View {
    @Environment(ModelData.self) var modelData // 从环境中获取modelData
    var landmark: Landmark
    
    var landmarkIndex: Int{
        // firstIndex(where:) 是数组的一个方法，用于找到第一个满足指定条件的元素的索引。$0.id == landmark.id 是查找条件，即找到第一个 id 与 landmark.id 相同的元素。
        // 是一个闭包（closure），用于指定查找条件
        // ! 强制解包（force unwrap），表明我们确信一定能找到符合条件的地标，所以返回的索引不是可选值（optional）
        modelData.landmarks.firstIndex(where: { $0.id == landmark.id })!    // 找到landmarks数组中第一个id与landmark.id 相同的元素的索引
    }
    
    var body: some View {
        @Bindable var modelData = modelData // 定义一个bindable变量 模型数据与视图之间进行双向数据绑定 简化和自动化数据变化通知
        ScrollView{ // 总的嵌套 垂直布局VStack 改为 ScrollView 便于滚动查看
            MapView(coordinate: landmark.locationCoordinate).frame(height: 300)    // 添加地图视图，高300
            
            CircleImage(image: landmark.image).offset(y:-130).padding(.bottom,-130) // 距离上面的距离-160，下部距离自己的距离-180
            
            VStack(alignment: .leading) { // 使用 VStack 将视图垂直排列 HStack 水平排列
    //            Image(systemName: "globe") // 添加一个系统图标，图标名称为 "globe"
    //                .imageScale(.large) // 设置图标的尺寸为大
    //                .foregroundStyle(.tint) // 设置图标的前景样式为 tint
                HStack{
                    Text(landmark.name)// 添加一个文本视图，显示 "Hello, world!"
                        .font(.title)   // 设置文本字体
                        .foregroundColor(.black)    // 设置文本颜色
                    FavoriteButton(isSet: $modelData.landmarks[landmarkIndex].isFavorite)
                }
               
                HStack { // 内部嵌套一个水平布局
                    Text(landmark.park)
                    Spacer()    // 添加空间
                    Text(landmark.state)
                }
                .font(.subheadline) // 统一设置字体 Text("贵阳市 观山湖区")与 Text("贵州省")
                .foregroundColor(.secondary) // 统一设置颜色
                
                Divider()   // 分割线
                Text("About \(landmark.name)") .font(.title2)
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
    LandmarkDetail(landmark: ModelData().landmarks[0])
}
