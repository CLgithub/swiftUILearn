//
//  BadgeBackground.swift
//  SwiftUILearn-01
//
//  Created by L on 2024/7/7.
//

import SwiftUI

struct BadgeBackground: View {
    
    static let x: CGFloat = 0.95
    static let y: CGFloat = 0.20
    
    var body: some View {
        // 创建一个自定义图形
        Path { path in
            // 宽高均为100
            var width: CGFloat = 100.0
            let height = width
            
            // 确定图形起点
            path.move(
                to: CGPoint( x: width * BadgeBackground.x, y: height * (BadgeBackground.y + HexagonParameters.adjustment) )
            )

            // 遍历定义好的图形的每一边
            HexagonParameters.segments.forEach {
                segment in 
                path.addLine(  // 绘制直线，沿着定义好的图形的每个直线终点，绘制图形
                    to: CGPoint( x: width * segment.line.x, y: height * segment.line.y )
                )
                path.addQuadCurve(  //绘制曲线
                    to: CGPoint( x: width * segment.curve.x, y: height * segment.curve.y ),
                    control: CGPoint( x: width * segment.control.x, y: height * segment.control.y )
                )
                
            }
        }
        .fill(.blue)
    }
}

#Preview {
    BadgeBackground()
}
