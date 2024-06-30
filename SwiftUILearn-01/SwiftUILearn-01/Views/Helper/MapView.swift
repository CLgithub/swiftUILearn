//  MapView.swift
//  SwiftUILearn-01
//  这个文件定义了一个使用 MapKit 显示地图的视图
//  Created by L on 2024/6/25.
//

import SwiftUI // 导入 SwiftUI 框架
import MapKit  // 导入 MapKit 框架，用于显示地图

// 定义 MapView 结构体，遵循 View 协议
struct MapView: View {
    
    var coordinate: CLLocationCoordinate2D  // 定义一个变量，接收坐标信息
    
    // 定义一个计算属性 body，它返回一些视图内容
    var body: some View {
        // 创建并返回一个 Map 视图，初始位置使用 .region 方法传入 region
//        Map(initialPosition: .region(region))
        Map(position: .constant(.region(region)))
    }
    
    // 创建一个私有计算属性，返回地图的区域信息
    private var region: MKCoordinateRegion {
        MKCoordinateRegion( // 创建并返回 MKCoordinateRegion 实例
//            center: CLLocationCoordinate2D(latitude: coordinate.latitude, longitude: coordinate.longitude), // 设置地图中心的坐标
            center: coordinate, // 可以直接简写
            span: MKCoordinateSpan(latitudeDelta: 0.2, longitudeDelta: 0.2) // 设置地图显示区域的跨度（缩放级别）
        )
    }
}

// 使用 #Preview 来预览 MapView
#Preview {
    MapView(coordinate: CLLocationCoordinate2D(latitude: 26.640332, longitude: 106.624237))
}
