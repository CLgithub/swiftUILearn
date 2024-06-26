//
//  Landmark.swift
//  SwiftUILearn-01
//
//  Created by L on 2024/6/26.
//

import Foundation
import SwiftUI
import CoreLocation

struct Landmark: Hashable, Codable{
    var id: Int
    var name: String
    var park: String
    var state: String
    var description: String
    
    private var imagesName: String  // 定义一个私有变量 变量名：imagesName，变量类型：String
    
    // 定义一个计算属性（类似方法），名称：image，类型：Image,
    // 计算属性 image 通过使用 imagesName 变量来创建并返回一个 Image 实例。
    var image: Image{
        Image(imagesName) // Image 的构造方法
    }
    
    // 管理有关地标位置的信息
    private var coordinates: Coordinates
    struct Coordinates: Hashable, Codable{
        var latitude: Double;
        var longitude: Double;
    }
    
    // 类似的 定义一个计算属性 属性值由coordinates的坐标来得到
    var locationCoordinate: CLLocationCoordinate2D{
        CLLocationCoordinate2D(
            latitude: coordinates.latitude, longitude: coordinates.longitude
        )
    }
    
    
}
