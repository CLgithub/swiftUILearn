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
    
    static let gradientStart = Color(red: 239.0 / 255, green: 120.0 / 255, blue: 221.0 / 255)
    static let gradientEnd = Color(red: 239.0 / 255, green: 172.0 / 255, blue: 120.0 / 255)
    
    var body: some View {
        GeometryReader { geometry in    // 屏幕大小
            // 创建一个自定义图形
            Path { path in
                // 宽高均为100
                var width: CGFloat = min(geometry.size.width, geometry.size.height)
                let height = width
                let xScale: CGFloat=0.832
                let xOffset=(width*(1.0-xScale))/2.0 // 偏移量是原来宽度减少后的一半
                width *= xScale // 宽对变成原来的 xScale被
                
                // 确定图形起点
                path.move(
                    to: CGPoint( x: width * Self.x + xOffset, y: height * (Self.y + HexagonParameters.adjustment) )
                )
                
                // 遍历定义好的图形的每一边
                HexagonParameters.segments.forEach {
                    segment in
                    path.addLine(  // 绘制直线，沿着定义好的图形的每个直线终点，绘制图形
                        to: CGPoint( x: width * segment.line.x + xOffset, y: height * segment.line.y )
                    )
                    path.addQuadCurve(  //绘制曲线
                        to: CGPoint( x: width * segment.curve.x + xOffset, y: height * segment.curve.y ),
                        control: CGPoint( x: width * segment.control.x + xOffset, y: height * segment.control.y )
                    )
                    
                }
            }
            .fill(.linearGradient(
                Gradient(colors: [Self.gradientStart, Self.gradientEnd]),
                startPoint: UnitPoint(x: 0.5, y:0),
                endPoint: UnitPoint(x:0.5, y :0.6)
            ))
        }
        .aspectRatio(1, contentMode: .fit)  //
    }
    
    
}

#Preview {
    BadgeBackground()
}
