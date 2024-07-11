/*
See the LICENSE.txt file for this sample’s licensing information.
单个胶囊图案，在整体整体中有个合适的位置与高度
Abstract:
A single line in the graph.
*/

import SwiftUI

struct GraphCapsule: View, Equatable {
    var index: Int  // 索引
    var color: Color    // 颜色
    var height: CGFloat     // 当前胶囊基准高度
    var range: Range<Double>        // 当前胶囊范围 表示当前胶囊形状所覆盖的范围
    var overallRange: Range<Double> // 整体范围，表示整个图表的范围

    // 确保整个图标能整体放缩
    var heightRatio: CGFloat { // 计算属性，当前胶囊在整体中的范围比，最小为0.15
        // 计算 range / overallRange，并且最小为0.15
        max(CGFloat(magnitude(of: range) / magnitude(of: overallRange)), 0.15)
    }

    var offsetRatio: CGFloat {  // 计算属性，返回基准偏移比例
        // 计算 range 的下限相对于 overallRange 的比例，用于确定胶囊形状的垂直偏移
        CGFloat((range.lowerBound - overallRange.lowerBound) / magnitude(of: overallRange))
    }

    var body: some View {   // 定义视图的主体
        Capsule()   // 创建一个胶囊形状
            .fill(color)     // 使用指定的颜色填充胶囊形状
            .frame(height: height * heightRatio)    // 设置胶囊形状的高度，当前胶囊高度 * 整体图表范围，
            .offset(x: 0, y: height * -offsetRatio) // 设置胶囊形状的偏移，基于 offsetRatio 计算
    }
}

#Preview {
    GraphCapsule(
        index: 0,
        color: .blue,
        height: 150,
        range: 10..<50, // 40
        overallRange: 0..<100)  // 100
}
