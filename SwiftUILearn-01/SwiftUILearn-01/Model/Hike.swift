//
//  Hike.swift
//  SwiftUILearn-01
//  数据模型Hike
//  Created by L on 2024/7/10.
//

import Foundation

struct Hike: Codable, Hashable, Identifiable {
    var name: String    // 名称
    var id: Int         // id
    var distance: Double    // 距离
    var difficulty: Int     // 难度系数
    var observations: [Observation] //

    struct Observation: Codable, Hashable {
        var elevation: Range<Double>    // 海拔范围
        var pace: Range<Double>         // 步幅范围
        var heartRate: Range<Double>    // 每分钟心跳次数范围
        var distanceFromStart: Double   // 距起点距离
    }
    
    // 创建一个格式化工具实例
    static var formatter = LengthFormatter()    // LengthFormatter 是 Foundation 框架中的一个类，用于格式化长度值
   
    // 这是一个计算属性 distanceText，它返回一个格式化后的字符串
    var distanceText: String {
        Hike.formatter.string(fromValue: distance, unit: .kilometer) // 返回格式化后的fromValue: distance, unit: .kilometer string(fromValue:unit:) 方法将 distance 值转换为字符串，单位指定为千米。
    }
}
